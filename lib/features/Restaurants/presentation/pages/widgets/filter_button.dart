import 'package:flutter/material.dart';
import '../../../../../core/constants/styles.dart';

class FilterButton extends StatelessWidget {
  final String text;
  final Function() onTap;
  const FilterButton({Key? key, required this.text, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
        decoration: kFilterDecoration,
        child: Text(
          text,
          style: kFilterBtnTxtStyle,
        ),
      ),
    );
  }
}
