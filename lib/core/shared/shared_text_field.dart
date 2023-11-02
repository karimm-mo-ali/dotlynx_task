// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
//
// class SharedTextField extends StatelessWidget {
//   const SharedTextField(
//       {Key? key,
//       this.hintText,
//       this.focusNode,
//       this.onSaved,
//       this.validator,
//       this.onFieldSubmitted,
//       this.onChange,
//       this.textInputAction,
//       this.keyboardType,
//       this.controller,
//       this.isObscure = false,
//       this.decoration,
//       this.readOnly = false,
//       this.enabled = true,
//       this.cardFormHint = false,
//       this.autoValidateMode = AutovalidateMode.onUserInteraction,
//       this.onEditingComplete,
//       this.maxLines,
//       this.onTap,
//       this.style = const TextStyle(fontFamily: "SFProDisplay"),
//       this.textAlign = TextAlign.left,
//       this.inputFormatters,
//       this.suffixIcon})
//       : super(key: key);
//
//   final String? hintText;
//   final FocusNode? focusNode;
//   final int? maxLines;
//   final bool isObscure;
//   final bool readOnly;
//   final bool enabled;
//   final bool cardFormHint;
//   final Widget? suffixIcon;
//   final TextStyle? style;
//   final TextAlign textAlign;
//   final AutovalidateMode autoValidateMode;
//   final TextEditingController? controller;
//   final TextInputAction? textInputAction;
//   final TextInputType? keyboardType;
//   final InputDecoration? decoration;
//   final String? Function(String?)? validator;
//   final void Function(String?)? onSaved;
//   final void Function(String)? onFieldSubmitted;
//   final void Function(String)? onChange;
//   final void Function()? onEditingComplete;
//   final VoidCallback? onTap;
//   final List<TextInputFormatter>? inputFormatters;
//   @override
//   Widget build(BuildContext context) {
//     return TextFormField(
//       style: style,
//       textAlign: textAlign,
//       focusNode: focusNode,
//       controller: controller,
//       enabled: enabled,
//       inputFormatters: inputFormatters ?? [],
//       keyboardType: keyboardType,
//       maxLines: maxLines ?? 1,
//       textInputAction: textInputAction,
//       obscureText: isObscure,
//       decoration: decoration ??
//           InputDecoration(
//               hintText: hintText,
//               hintStyle: const TextStyle(
//                       color: kHintColor,
//                       fontSize: 18,
//                       fontFamily: "SFProDisplay",
//                       fontWeight: FontWeight.w400),
//               enabledBorder: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(10),
//                   borderSide: const BorderSide(color: kPrimaryColor, width: 1)),
//               focusedBorder: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(10),
//                   borderSide: const BorderSide(color: kPrimaryColor, width: 1)),
//               focusedErrorBorder: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(10),
//                   borderSide: const BorderSide(color: kPrimaryColor, width: 1)),
//               errorBorder: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(10),
//                   borderSide: const BorderSide(color: kPrimaryColor, width: 1)),
//               suffixIcon: suffixIcon),
//       onChanged: onChange,
//       onSaved: onSaved,
//       validator: validator ??
//           qValidator([
//             IsRequired(),
//           ]),
//       onTap: onTap,
//       readOnly: readOnly,
//       onFieldSubmitted: onFieldSubmitted,
//       onEditingComplete: onEditingComplete,
//       autovalidateMode: autoValidateMode,
//     );
//   }
// }
