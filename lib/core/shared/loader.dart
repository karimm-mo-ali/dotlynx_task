import 'package:flutter/material.dart';
import '../config/routes.dart';
import 'shared_loader_indicator.dart';

class Loader {
  static start() {
    showDialog(
      context: AppRoutes.navigatorKey.currentContext!,
      barrierDismissible: false,
      builder: (context) => const Center(
        child: CustomLoadingIndicator(),
      ),
    );
  }

  static stop() {
    Navigator.pop(AppRoutes.navigatorKey.currentContext!);
  }

  static Widget loadingWidget() {
    return const Center(
      child: CustomLoadingIndicator(),
    );
  }
}
