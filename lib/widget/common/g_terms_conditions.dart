import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:g_pay/constants.dart';
import 'package:g_pay/widget/common/g_button_detector.dart';

class GTermsAndConditions extends StatelessWidget {
  const GTermsAndConditions({
    Key? key,
    this.onPressed,
  }) : super(key: key);

  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    final themeColor = Theme.of(context);
    return GButtonDetector(
      onPressed: onPressed,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          RichText(
            text: TextSpan(
                text: 'Terms & Conditions apply, click ',
                style: kMediumFontStyle.copyWith(
                  fontSize: kSize14.sp,
                  color: themeColor.textTheme.bodyText2?.color,
                ),
                children: [
                  TextSpan(
                    text: 'here ',
                    style: kMediumFontStyle.copyWith(
                      fontSize: kSize14.sp,
                      color: themeColor.textTheme.bodyText1?.color,
                    ),
                  ),
                  TextSpan(
                    text: 'for more',
                    style: kMediumFontStyle.copyWith(
                      fontSize: kSize14.sp,
                      color: themeColor.textTheme.bodyText2?.color,
                    ),
                  )
                ]
            ),

            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
