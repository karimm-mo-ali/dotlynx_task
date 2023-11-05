import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../../core/constants/assets.dart';
import '../../../../../core/constants/styles.dart';

class OrderView extends StatefulWidget {
  const OrderView({Key? key}) : super(key: key);

  @override
  State<OrderView> createState() => _OrderViewState();
}

class _OrderViewState extends State<OrderView> {
  final List<Map<String, dynamic>> orders = [
    {
      "image": kKfcAsset,
      "title": 'KFC',
      "subTitle": 'Chicken Crispy Strips...',
    },
    {
      "image": kMacAsset,
      "title": 'McDonald’s',
      "subTitle": 'I’m Lovin’ It',
    }
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 25),
        child: Row(
          children: [
            ...List.generate(
              orders.length,
              (index) => Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Container(
                  padding: const EdgeInsets.only(
                      top: 13, bottom: 13, left: 15, right: 6),
                  decoration: kFilterDecoration,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(orders[index]["image"]),
                      Padding(
                        padding: const EdgeInsets.only(left: 15, right: 22),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              orders[index]["title"],
                              style: kOrderTitleStyle,
                            ),
                            const SizedBox(height: 2),
                            Text(
                              orders[index]["subTitle"],
                              style: kOrderSubTitleStyle,
                            )
                          ],
                        ),
                      ),
                      SvgPicture.asset(kReloadAsset),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
