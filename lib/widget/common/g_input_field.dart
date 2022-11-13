import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:g_pay/constants.dart';

class GInputField extends StatelessWidget {
  final Function(String?)? onChanged;
  final String? Function(String?)? validator;
  final String? hintText;
  final bool obscureText;
  final TextInputType keyboardType;
  final TextAlign textAlign;
  final int? maxLength;
  final TextEditingController? controller;
  final bool readOnly;
  final bool filled;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final FocusNode? focusNode;
  final List<TextInputFormatter>? inputFormatters;
  final void Function()? onTap;
  final TextCapitalization textCapitalization;
  final TextStyle? hintStyle;

  const GInputField({
    Key? key,
    this.onChanged,
    this.validator,
    this.hintText,
    this.obscureText = false,
    this.keyboardType = TextInputType.text,
    this.textAlign = TextAlign.left,
    this.maxLength,
    this.controller,
    this.readOnly = false,
    this.filled = false,
    this.suffixIcon,
    this.prefixIcon,
    this.focusNode,
    this.inputFormatters,
    this.onTap,
    this.textCapitalization = TextCapitalization.none,
    this.hintStyle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onTap: onTap,
      obscureText: obscureText,
      keyboardType: keyboardType,
      textAlign: textAlign,
      style: kRegularFontStyle.copyWith(
        fontSize: kSize14.sp,
        color: Theme.of(context).textTheme.bodyText2!.color
      ),
      onChanged: onChanged,
      validator: validator,
      maxLength: maxLength,
      readOnly: readOnly,
      controller: controller,
      textCapitalization: textCapitalization,
      focusNode: focusNode,
      inputFormatters: inputFormatters,
      cursorColor: Theme.of(context).textSelectionTheme.cursorColor,
      decoration: InputDecoration(
        fillColor: kGenioGreenLightColor,
        filled: filled,
        hintText: hintText,
        suffixIcon: suffixIcon,
        prefixIcon: prefixIcon,
        counterText: '',
        helperText: ' ',
        hintStyle: hintStyle?? kLightFontStyle.copyWith(
          fontSize: kSize14.sp,
          color: const Color(0xFF2C2C2E),
        ),
        errorStyle: kRegularFontStyle.copyWith(
          fontSize: kSize14.sp,
          color: kGenioRedColor,
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10.0.r)),
          borderSide: const BorderSide(color: kGenioRedColor, width: 1.0),
        ),
        contentPadding: EdgeInsets.symmetric(
          vertical: 19.0.h,
          horizontal: 16.0.w,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10.0 .r)),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: kGenioGreenColor, width: 1.0),
          borderRadius: BorderRadius.all(Radius.circular(10.0.r)),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: kGenioGreenColor, width: 1.0),
          borderRadius: BorderRadius.all(Radius.circular(10.0.r)),
        ),
      ),
    );
  }
}
