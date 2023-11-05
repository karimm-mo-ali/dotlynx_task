import 'package:flutter/material.dart';
import 'colors.dart';
import 'strings.dart';
import 'dart:math' as math;

// ------------------------ Styles
const kMsgDialogStyle = TextStyle(
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

const kSectionStyle = TextStyle(
  color: kTxt1Color,
  fontSize: 16,
  fontFamily: appFontFamily,
  fontWeight: FontWeight.w500,
  letterSpacing: 1.40,
);

const kTextFieldHintStyle = TextStyle(
  color: kHintColor,
  fontSize: 19,
  fontFamily: appFontFamily,
  fontWeight: FontWeight.w400,
  height: 0.0,
  letterSpacing: -0.17,
);

const kCategoriesTxtStyle = TextStyle(
  color: kBlackColor,
  fontSize: 14,
  fontFamily: appFontFamily,
  fontWeight: FontWeight.w500,
  height: 0.16,
  letterSpacing: -0.12,
);

const kContainerStyle = TextStyle(
  color: kBlackColor,
  fontSize: 23,
  fontFamily: appFontFamily,
  fontWeight: FontWeight.w500,
  height: 0.05,
  letterSpacing: -0.17,
);

const kProductsTxtStyle = TextStyle(
  color: kBlackColor,
  fontSize: 17,
  fontFamily: appFontFamily,
  fontWeight: FontWeight.w400,
  height: 0.10,
  letterSpacing: -0.15,
);

const kFilterBtnTxtStyle = TextStyle(
  color: kBlackColor,
  fontSize: 14,
  fontFamily: appFontFamily,
  fontWeight: FontWeight.w500,
  letterSpacing: 1.40,
);

const kOrderTitleStyle = TextStyle(
  color: kBlackColor,
  fontSize: 13,
  fontFamily: appFontFamily,
  fontWeight: FontWeight.w700,
  //  height: 0.11,
  letterSpacing: -0.11,
);

final kOrderSubTitleStyle = TextStyle(
  color: kBlackColor.withOpacity(0.5),
  fontSize: 11,
  fontFamily: appFontFamily,
  fontWeight: FontWeight.w400,
  // height: 0.11,
  letterSpacing: -0.11,
);

const kRestaurantNameStyle = TextStyle(
  color: kBlackColor,
  fontSize: 25,
  fontFamily: appFontFamily,
  fontWeight: FontWeight.w700,
  letterSpacing: 2.50,
);

const kRestaurantRatingStyle = TextStyle(
  color: kWhiteColor,
  fontSize: 12,
  fontFamily: appFontFamily,
  fontWeight: FontWeight.w500,
  letterSpacing: 1.20,
);

final kRestaurantSharedStyle = TextStyle(
  color: kBlackColor.withOpacity(0.5),
  fontSize: 12,
  fontFamily: appFontFamily,
  fontWeight: FontWeight.w500,
  letterSpacing: 1.20,
);

const kRestaurantOfferStyle = TextStyle(
  color: kRedColor,
  fontSize: 12,
  fontFamily: appFontFamily,
  fontWeight: FontWeight.w500,
);

const kRestaurantSeparateStyle = TextStyle(
  color: kRedColor,
  fontSize: 19,
  fontFamily: appFontFamily,
  fontWeight: FontWeight.w500,
  letterSpacing: 1.90,
);

// ------------------------ Decorations
const kLoadingIndicatorDecoratedBox = DecoratedBox(
  decoration: BoxDecoration(
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
        color: Colors.grey.withOpacity(0.1)),
  ],
);

final kCategoriesDecoration = ShapeDecoration(
  color: kBoxColor,
  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
);

final kFilterDecoration = ShapeDecoration(
  color: kWhiteColor,
  shape: RoundedRectangleBorder(
    side: const BorderSide(width: 1, color: kFilterColor),
    borderRadius: BorderRadius.circular(10),
  ),
);

final kRestaurantsDecoration = BoxDecoration(
  color: kRestColor,
  borderRadius: BorderRadius.circular(10),
  boxShadow: const <BoxShadow>[
    BoxShadow(
      color: kShadowColor,
      offset: Offset(0.0, 4.0),
      blurRadius: 4.0,
    ),
  ],
);

final kRecommendedRestaurant = ShapeDecoration(
  color: Colors.white,
  shape: RoundedRectangleBorder(
    side: BorderSide(
        width: 3,
        color: Color((math.Random().nextDouble() * 0xFFFFFF).toInt())
            .withOpacity(1.0)),
    borderRadius: BorderRadius.circular(80),
  ),
);

final kRatingDecoration = ShapeDecoration(
  color: kRedColor,
  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
);
