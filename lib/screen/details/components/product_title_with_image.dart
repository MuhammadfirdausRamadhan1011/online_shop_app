import 'package:flutter/material.dart';
import 'package:online_shop_app_ui/models/Product.dart';

import '../../../constants.dart';

class ProductTitleWithImage extends StatelessWidget {
  const ProductTitleWithImage({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product? product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Aristocratic Hand Bag',
            style: TextStyle(color: Colors.white),
          ),
          Text(
            product!.title!,
            style: Theme.of(context)
                .textTheme
                .headline4!
                .copyWith(color: Colors.white),
          ),
          SizedBox(height: kDefaultPadding),
          Row(
            children: [
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(text: 'Price\n'),
                    TextSpan(
                        text: '\$${product!.price!}',
                        style: Theme.of(context).textTheme.headline4!.copyWith(
                            color: Colors.white, fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
              SizedBox(width: kDefaultPadding),
              Expanded(
                  child: Hero(
                      tag: '${product!.id!}',
                      child: Image.asset(
                        product!.image!,
                        fit: BoxFit.fill,
                      ))),
            ],
          ),
        ],
      ),
    );
  }
}
