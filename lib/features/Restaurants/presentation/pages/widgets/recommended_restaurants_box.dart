import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import '../../../../../core/config/env.dart';
import '../../../../../core/constants/styles.dart';
import '../../manager/RestaurantsCubit/restaurants_cubit.dart';

class RecommendedRestaurantsBox extends StatelessWidget {
  const RecommendedRestaurantsBox({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          ...List.generate(
            GetRestaurantsCubit.get(context).originalRestaurants!.length,
            (index) => Padding(
              padding: const EdgeInsets.only(right: 15),
              child: Container(
                width: 106,
                height: 107,
                padding: const EdgeInsets.only(
                  top: 15,
                  left: 12,
                  right: 12,
                  bottom: 14,
                ),
                decoration: kRecommendedRestaurant,
                child: CachedNetworkImage(
                  imageUrl: GetRestaurantsCubit.get(context)
                              .originalRestaurants![index]
                              .businessLogo !=
                          null
                      ? "${kAppConfig['image']}${GetRestaurantsCubit.get(context).originalRestaurants![index].businessLogo}"
                      : "",
                  placeholder: (context, url) => const Placeholder(),
                  errorWidget: (context, url, error) => const Placeholder(),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
