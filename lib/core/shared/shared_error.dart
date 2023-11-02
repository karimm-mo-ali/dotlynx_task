// import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import '../config/routes.dart';
// import '../constants/assets.dart';
// import '../constants/colors.dart';
//
// showErrorDialog(String error) {
//   if (error.isNotEmpty) {
//     showDialog(
//         context: AppRoutes.navigatorKey.currentContext!,
//         builder: (context) {
//           return DialogFb2(
//             true,
//             text: error,
//           );
//         });
//   }
// }
//
// showSuccessDialog(String message,
//     {Widget? navigateTo, bool isReplacementNavigation = true}) {
//   if (message.isNotEmpty) {
//     showDialog(
//         barrierDismissible: false,
//         context: AppRoutes.navigatorKey.currentContext!,
//         builder: (context) {
//           if (navigateTo != null) {
//             Future.delayed(const Duration(seconds: 3), () {
//               Navigator.pop(context);
//               if (isReplacementNavigation) {
//                 Navigator.pushReplacement(
//                     AppRoutes.navigatorKey.currentContext!,
//                     MaterialPageRoute(builder: ((cont) => navigateTo)));
//               } else {
//                 pushNewScreen(
//                   context,
//                   screen: navigateTo,
//                 );
//               }
//             });
//           } else {
//             Future.delayed(const Duration(seconds: 3), () {
//               Navigator.pop(context);
//             });
//           }
//           return DialogFb2(
//             false,
//             text: message,
//           );
//         });
//   }
// }
//
// // ignore: must_be_immutable
// class DialogFb2 extends StatelessWidget {
//   final bool isError;
//   DialogFb2(
//     this.isError, {
//     Key? key,
//     this.customButtons,
//     this.image,
//     required this.text,
//   }) : super(key: key);
//   final primaryColor = kPrimaryColor;
//   final accentColor = const Color(0xffffffff);
//   final String text;
//   Widget? customButtons;
//   Widget? image;
//   @override
//   Widget build(BuildContext context) {
//     final size = MediaQuery.of(context).size;
//     return Dialog(
//       elevation: 1,
//       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(36)),
//       child: Container(
//         width: MediaQuery.of(context).size.width,
//         height: 280,
//         padding: EdgeInsets.symmetric(horizontal: size.width * 0.077),
//         decoration: BoxDecoration(
//             color: kWhiteColor,
//             borderRadius: BorderRadius.circular(36.0),
//             boxShadow: [
//               BoxShadow(
//                   offset: const Offset(12, 26),
//                   blurRadius: 50,
//                   color: Colors.grey.withOpacity(.1)),
//             ]),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             isError
//                 ? SvgPicture.asset(kError, height: 30)
//                 : SvgPicture.asset(kSuccess, height: 30),
//             Padding(
//               padding: const EdgeInsets.only(top: 20, bottom: 8),
//               child: Text(isError ? "Error" : "Success",
//                   textAlign: TextAlign.center,
//                   style: TextStyle(
//                       color: isError ? kErrorColor : kPrimaryColor,
//                       fontSize: 20,
//                       fontFamily: "SFProDisplay",
//                       fontWeight: FontWeight.w700)),
//             ),
//             Text(text,
//                 textAlign: TextAlign.center,
//                 style: const TextStyle(
//                     color: kPrimaryColor,
//                     fontSize: 16,
//                     fontFamily: "SFProDisplay",
//                     fontWeight: FontWeight.w400)),
//             if (customButtons == null)
//               const SizedBox(
//                 height: 15,
//               ),
//             if (customButtons != null) customButtons ?? const SizedBox()
//           ],
//         ),
//       ),
//     );
//   }
// }
//
// SnackBar successSnakBar(String content) {
//   return SnackBar(
//     content: Row(
//       children: [
//         SizedBox(height: 25, width: 25, child: Image.asset(kSuccess)),
//         const SizedBox(
//           width: 25,
//         ),
//         Text(
//           content,
//           style: kText16Bold.copyWith(
//               fontSize: 12,
//               fontFamily: "SFProDisplay",
//               overflow: TextOverflow.fade),
//           maxLines: 10,
//         ),
//       ],
//     ),
//   );
// }
//
// SnackBar errSnakBar(String content) {
//   return SnackBar(
//     content: Row(
//       children: [
//         SizedBox(height: 25, width: 25, child: Image.asset(kError)),
//         const SizedBox(
//           width: 25,
//         ),
//         Flexible(
//           child: Text(
//             content,
//             style: kText16Bold.copyWith(
//                 fontSize: 12,
//                 fontFamily: "SFProDisplay",
//                 overflow: TextOverflow.fade),
//             maxLines: 10,
//           ),
//         ),
//       ],
//     ),
//   );
// }
