import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:g_pay/constants.dart';

class TaxItem extends StatelessWidget {
  const TaxItem({
    Key? key,
    this.title,
    this.text = '',
    this.children = const [],
    this.customize = false,
    this.hasBottomBorder = false,
  }) : super(key: key);

  final String? title;
  final String text;
  final List<Widget> children;
  final bool customize;
  final bool hasBottomBorder;

  @override
  Widget build(BuildContext context) {
    final themeColor = Theme.of(context);
    if(customize){
      return Container(
        padding: hasBottomBorder? EdgeInsets.only(
            bottom: 16.0.h
        ): null,
        decoration: hasBottomBorder? const BoxDecoration(
            border: Border(bottom: BorderSide(color: kGenioGreenLightColor, width: 1.0))
        ) : null,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: children,
        ),
      );
    }

    return Container(
      padding: hasBottomBorder ? EdgeInsets.only(
          bottom: 16.0.h
      ) : null,
      decoration: hasBottomBorder ? const BoxDecoration(
          border: Border(bottom: BorderSide(color: kGenioGreenLightColor, width: 1.0))
      ): null,
      child: RichText(
        text: TextSpan(
            text: title,
            style: kSemiBoldFontStyle.copyWith(
              fontSize: kSize16.sp,
              color: themeColor.textTheme.bodyText1?.color,
            ),
            children: [
              TextSpan(
                text: text,
                style: kRegularFontStyle.copyWith(
                  fontSize: kSize14.sp,
                  color: themeColor.textTheme.bodyText2?.color,
                ),
              ),
            ]
        ),
      ),
    );

  }
}
