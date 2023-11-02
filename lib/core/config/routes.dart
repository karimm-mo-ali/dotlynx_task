import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import '../../features/Restaurants/presentation/pages/restaurants_screen.dart';


///////////// features keys ////////////////
const restaurantsScreen = 'restaurantsScreen';


class AppRoutes {
  static final navigatorKey = GlobalKey<NavigatorState>();
  static Route<dynamic>? generatedRoutes(RouteSettings settings) {
    switch (settings.name) {
      case restaurantsScreen:
        return createPageBuilder(const RestaurantsScreen(), settings);
      // case resetPasswordScreen:
      //   var args = settings.arguments != null
      //       ? settings.arguments as Map<String, dynamic>
      //       : {};
      //   return createPageBuilder(
      //       ResetPasswordScreen(
      //         username: args['username'],
      //       ),
      //       settings);

      default:
        return null;
    }
  }

  static PageRouteBuilder createPageBuilder(
      Widget widget, RouteSettings settings) {
    return PageTransition(
      child: widget,
      type: PageTransitionType.fade,
    );
  }
}
