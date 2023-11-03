import 'package:flutter/material.dart';
import 'colors.dart';
import 'strings.dart';

// final kDefaultRadius = BorderRadius.circular(4.0);
// const kHorizontal20Padding = EdgeInsets.symmetric(horizontal: 20.0);

// ------------------------ Style & Decoration
const kMsgDialogStyle = TextStyle(
  // color: kPrimaryColor,
  color: kBlackColor,
  fontSize: 16,
  fontFamily: appFontFamily,
  fontWeight: FontWeight.w400,
);

const kErrorDialogStyle = TextStyle(
  color: kBlackColor,
  fontSize: 20,
  fontFamily: appFontFamily,
  fontWeight: FontWeight.w700,
);

const kLoadingIndicatorDecoratedBox = DecoratedBox(
  decoration: BoxDecoration(
//  color: kPrimaryColor,
    color: kBlackColor,
  ),
);

final kDialogBoxDecoration = BoxDecoration(
  color: kWhiteColor,
  borderRadius: BorderRadius.circular(36.0),
  boxShadow: [
    BoxShadow(
        offset: const Offset(12, 26),
        blurRadius: 50,
        color: Colors.grey.withOpacity(.1)),
  ],
);
