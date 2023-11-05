import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../../core/config/env.dart';
import '../../../../../core/constants/assets.dart';
import '../../../../../core/constants/colors.dart';
import '../../../../../core/constants/styles.dart';
import '../../../data/models/restaurants_model.dart';

class RestaurantsBox extends StatelessWidget {
  final List<Restaurants> restaurants;
  const RestaurantsBox({super.key, required this.restaurants});

  @override
  Widget build(BuildContext context) {
    return restaurants.isEmpty
        ? const Padding(
            padding: EdgeInsets.symmetric(vertical: 50),
            child: Center(
              child:
                  Text("No Restaurants", style: TextStyle(color: kBlackColor)),
            ),
          )
        : Column(
            children: [
              ...List.generate(
                restaurants.length,
                (index) => Container(
                  margin: const EdgeInsets.only(bottom: 25),
                  decoration: kRestaurantsDecoration,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CachedNetworkImage(
                        imageUrl: restaurants[index].businessLogo != null
                            ? "${kAppConfig['image']}${restaurants[index].businessLogo}"
                            : "",
                        placeholder: (context, url) => const Placeholder(),
                        errorWidget: (context, url, error) =>
                            const Placeholder(),
                        height: 200,
                        width: double.infinity,
                        fit: BoxFit.fill,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 8, horizontal: 12),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child: Text(
                                    restaurants[index]
                                            .storesLocales![0]
                                            .businessName ??
                                        "",
                                    style: kRestaurantNameStyle,
                                  ),
                                ),
                                restaurants[index].avgRating!.isEmpty ||
                                        restaurants[index].avgRating! == "0"
                                    ? const SizedBox()
                                    : Container(
                                        padding: const EdgeInsets.only(
                                          top: 5,
                                          left: 3,
                                          right: 2.99,
                                          bottom: 5.24,
                                        ),
                                        decoration: kRatingDecoration,
                                        child: Text(
                                            '${double.parse(restaurants[index].avgRating!).toStringAsFixed(
                                              double.parse(restaurants[index]
                                                              .avgRating!)
                                                          .truncateToDouble() ==
                                                      double.parse(
                                                          restaurants[index]
                                                              .avgRating!)
                                                  ? 0
                                                  : 2,
                                            )}★',
                                            style: kRestaurantRatingStyle),
                                      ),
                              ],
                            ),
                            const SizedBox(height: 5),
                            Text(
                              restaurants[index].slug ?? "",
                              style: kRestaurantSharedStyle,
                            ),
                            const SizedBox(height: 8),
                            Row(
                              children: [
                                SvgPicture.asset(kDistanceAsset),
                                const SizedBox(width: 5),
                                Text(
                                  '${restaurants[index].orderAcceptTime}-${restaurants[index].orderTimeForPicker} min',
                                  style: kRestaurantSharedStyle,
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(horizontal: 5),
                                  child: Text(
                                    '•',
                                    style: kRestaurantSharedStyle,
                                  ),
                                ),
                                Text(
                                  '${restaurants[index].distance!.toStringAsFixed(2)}km',
                                  style: kRestaurantSharedStyle,
                                ),
                              ],
                            ),
                            const SizedBox(height: 10),
                            restaurants[index]
                                    .discountsAndOfferRelations!
                                    .isEmpty
                                ? const SizedBox()
                                : Row(
                                    children: [
                                      SvgPicture.asset(kOfferAsset),
                                      const SizedBox(width: 5),
                                      const Text('Buy 1 Get 1',
                                          style: kRestaurantOfferStyle),
                                      const Padding(
                                        padding:
                                            EdgeInsets.symmetric(horizontal: 5),
                                        child: Text(
                                          '|',
                                          style: kRestaurantSeparateStyle,
                                        ),
                                      ),
                                      SvgPicture.asset(kDiscountAsset),
                                      const SizedBox(width: 5),
                                      const Text(
                                        '30% Off Discount',
                                        style: kRestaurantOfferStyle,
                                      ),
                                    ],
                                  ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          );
  }
}
