import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../config/routes.dart';
import '../constants/assets.dart';
import '../constants/styles.dart';

showErrorDialog(String error) {
  if (error.isNotEmpty) {
    showDialog(
        context: AppRoutes.navigatorKey.currentContext!,
        builder: (context) {
          return DialogFb2(
            text: error,
          );
        });
  }
}

// ignore: must_be_immutable
class DialogFb2 extends StatelessWidget {
  final String text;
  Widget? customButtons;
  DialogFb2({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Dialog(
      elevation: 1,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(36)),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 280,
        padding: EdgeInsets.symmetric(horizontal: size.width * 0.077),
        decoration: kDialogBoxDecoration,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(kError, height: 30),
            const Padding(
              padding: EdgeInsets.only(top: 20, bottom: 8),
              child: Text("Error",
                  textAlign: TextAlign.center, style: kErrorDialogStyle),
            ),
            Text(text, textAlign: TextAlign.center, style: kMsgDialogStyle),
            if (customButtons == null)
              const SizedBox(
                height: 15,
              ),
            if (customButtons != null) customButtons ?? const SizedBox()
          ],
        ),
      ),
    );
  }
}
