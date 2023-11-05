import 'dart:convert';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import '../../../../../core/config/env.dart';
import '../../../../../core/constants/styles.dart';
import '../../../data/models/products_model.dart';

class ProductsView extends StatelessWidget {
  final List<Products> products;
  const ProductsView({super.key, required this.products});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.only(top: 30, bottom: 25),
        child: Row(
          children: [
            ...List.generate(
              products.length,
              (index) {
                var uomData = jsonDecode(products[index].uomData!);
                var imageUrl = uomData[0]['uom_images'][0]['image'];
                return Container(
                  width: 100,
                  padding: const EdgeInsets.only(right: 20),
                  child: Column(
                    children: [
                      CachedNetworkImage(
                        imageUrl: imageUrl.isNotEmpty
                            ? "${kAppConfig['image']}$imageUrl"
                            : "",
                        placeholder: (context, url) => const Placeholder(),
                        errorWidget: (context, url, error) =>
                            const Placeholder(),
                        height: 70,
                        width: 70,
                        fit: BoxFit.cover,
                      ),
                      const SizedBox(height: 25),
                      FittedBox(
                        child: Text(products[index].slug ?? "",
                            style: kProductsTxtStyle),
                      )
                    ],
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
