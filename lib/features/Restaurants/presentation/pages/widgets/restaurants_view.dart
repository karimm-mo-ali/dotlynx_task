import 'package:flutter/material.dart';
import '../../../../../core/helpers/helper_methods.dart';
import '../../../../../core/shared/shared_section.dart';
import '../../../data/models/restaurants_model.dart';
import 'filter_box.dart';
import 'recommended_restaurants_box.dart';
import 'restaurants_box.dart';

class RestaurantsView extends StatelessWidget {
  final List<Restaurants> restaurants;
  const RestaurantsView({super.key, required this.restaurants});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const FilterBox(),
        const SizedBox(height: 20),
        RestaurantsBox(restaurants: restaurants),
        const SizedBox(height: 20),
        const SharedSection(text: 'RECOMMENDED RESTAURANTS'),
        const SizedBox(height: 25),
        const RecommendedRestaurantsBox(),
        SizedBox(height: setHeight(context, 0.05)),
      ],
    );
  }
}
