import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../../../../core/constants/colors.dart';
import '../../../../../core/constants/strings.dart';
import '../../../../../core/constants/styles.dart';

class TextFieldBox extends StatelessWidget {
  const TextFieldBox({
    Key? key,
    this.hintText,
    this.focusNode,
    this.onSaved,
    this.validator,
    this.onFieldSubmitted,
    this.onChange,
    this.textInputAction,
    this.keyboardType,
    this.controller,
    this.isObscure = false,
    this.decoration,
    this.readOnly = false,
    this.enabled = true,
    this.cardFormHint = false,
    this.autoValidateMode = AutovalidateMode.onUserInteraction,
    this.onEditingComplete,
    this.maxLines,
    this.onTap,
    this.style = const TextStyle(fontFamily: appFontFamily),
    this.textAlign = TextAlign.left,
    this.inputFormatters,
    this.suffixIcon,
    this.prefixIcon,
  }) : super(key: key);

  final String? hintText;
  final FocusNode? focusNode;
  final int? maxLines;
  final bool isObscure;
  final bool readOnly;
  final bool enabled;
  final bool cardFormHint;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final TextStyle? style;
  final TextAlign textAlign;
  final AutovalidateMode autoValidateMode;
  final TextEditingController? controller;
  final TextInputAction? textInputAction;
  final TextInputType? keyboardType;
  final InputDecoration? decoration;
  final String? Function(String?)? validator;
  final void Function(String?)? onSaved;
  final void Function(String)? onFieldSubmitted;
  final void Function(String)? onChange;
  final void Function()? onEditingComplete;
  final VoidCallback? onTap;
  final List<TextInputFormatter>? inputFormatters;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: style,
      textAlign: textAlign,
      focusNode: focusNode,
      controller: controller,
      enabled: enabled,
      inputFormatters: inputFormatters ?? [],
      keyboardType: keyboardType,
      maxLines: maxLines ?? 1,
      textInputAction: textInputAction,
      obscureText: isObscure,
      decoration: decoration ??
          InputDecoration(
            hintText: hintText,
            hintStyle: kTextFieldHintStyle,
            filled: true,
            fillColor: kTxtFieldColor,
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(color: kTxtFieldColor, width: 0)),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(color: kTxtFieldColor, width: 0)),
            focusedErrorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(color: kTxtFieldColor, width: 0)),
            errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(color: kTxtFieldColor, width: 0)),
            suffixIcon: suffixIcon,
            prefixIcon: prefixIcon,
          ),
      onChanged: onChange,
      onSaved: onSaved,
      validator: validator,
      onTap: onTap,
      readOnly: readOnly,
      onFieldSubmitted: onFieldSubmitted,
      onEditingComplete: onEditingComplete,
      autovalidateMode: autoValidateMode,
    );
  }
}
