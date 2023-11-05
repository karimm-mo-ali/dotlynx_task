import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import '../../../../../core/config/env.dart';
import '../../../../../core/constants/styles.dart';
import '../../../data/models/categories_model.dart';

class CategoriesView extends StatelessWidget {
  final List<Categories> categories;
  const CategoriesView({Key? key, required this.categories}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 25),
        child: Row(
          children: [
            ...List.generate(
              categories.length,
              (index) => Container(
                width: 100,
                padding: const EdgeInsets.only(right: 20),
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(10),
                      margin: const EdgeInsets.only(bottom: 25),
                      decoration: kCategoriesDecoration,
                      child: CachedNetworkImage(
                        imageUrl: categories[index].image != null
                            ? "${kAppConfig['image']}${categories[index].image}"
                            : "",
                        placeholder: (context, url) => const Placeholder(),
                        errorWidget: (context, url, error) =>
                            const Placeholder(),
                        height: 70,
                        width: 70,
                        fit: BoxFit.scaleDown,
                      ),
                    ),
                    FittedBox(
                      child: Text(
                        categories[index].slug ?? "",
                        style: kCategoriesTxtStyle,
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
