import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../../core/constants/assets.dart';
import '../../../../../core/constants/styles.dart';
import '../../manager/RestaurantsCubit/restaurants_cubit.dart';
import 'filter_button.dart';

class FilterBox extends StatelessWidget {
  const FilterBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15),
      child:  SingleChildScrollView(
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 13),
              margin: const EdgeInsets.only(right: 6),
              decoration: kFilterDecoration,
              child: SvgPicture.asset(kFilterAsset),
            ),
            Expanded(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    FilterButton(
                      text: '📦Under 30 mins',
                      onTap: () =>
                          GetRestaurantsCubit.get(context).filterByTimeUnder30Min(),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 6),
                      child: FilterButton(
                        text: '📍Nearest',
                        onTap: () =>
                            GetRestaurantsCubit.get(context).filterByNearest(),
                      ),
                    ),
                    FilterButton(
                      text: '⚡️Offers',
                      onTap: () =>
                          GetRestaurantsCubit.get(context).filterByOffers(),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
