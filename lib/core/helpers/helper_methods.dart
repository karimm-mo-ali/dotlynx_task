import 'package:flutter/material.dart';

Size getMediaQuerySize(BuildContext context) {
  return MediaQuery.of(context).size;
}

double setHeight(BuildContext context, double heightPercentage) {
  return getMediaQuerySize(context).height * heightPercentage;
}

double setWidth(BuildContext context, double widthPercentage) {
  return getMediaQuerySize(context).width * widthPercentage;
}

navigateNamedTo(BuildContext context, routeName) {
  Navigator.of(context).pushNamed(routeName);
}

hideKeyboard(BuildContext context) {
  FocusScopeNode currentFocus = FocusScope.of(context);
  if (!currentFocus.hasPrimaryFocus) {
    currentFocus.unfocus();
  }
}
