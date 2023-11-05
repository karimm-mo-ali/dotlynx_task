import 'package:flutter/material.dart';
import '../constants/colors.dart';
import '../constants/styles.dart';

class SharedSection extends StatelessWidget {
  final String text;
  const SharedSection({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
          child: Divider(
            color: kDividerColor,
            thickness: 2,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: Text(text, style: kSectionStyle),
        ),
        const Expanded(
          child: Divider(
            color: kDividerColor,
            thickness: 2,
          ),
        ),
      ],
    );
  }
}
