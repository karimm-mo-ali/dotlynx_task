import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import '../constants/styles.dart';

class CustomLoadingIndicator extends StatelessWidget {
  const CustomLoadingIndicator({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SpinKitWave(
      size: 25,
      itemBuilder: (BuildContext context, int index) {
        return kLoadingIndicatorDecoratedBox;
      },
    );
  }
}
