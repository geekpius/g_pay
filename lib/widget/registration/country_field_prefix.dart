import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:g_pay/constants.dart';
import 'package:g_pay/widget/common/svg_icon.dart';

class CountryFieldPrefix extends StatelessWidget {
  const CountryFieldPrefix({
    Key? key,
    required this.countryName,
  }) : super(key: key);

  final String countryName;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25.0.w),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          GSvgIcon(
              'brazil.svg',
            size: 20.r,
          ),
          SizedBox(width: 8.w),
          GSvgIcon(
            'arrow_down.svg',
            color: kGenioGreenColor,
            size: 17.r,
          ),
          SizedBox(width: 16.w),
          RichText(
            text: TextSpan(
                text: 'Country\n',
                style: kLightFontStyle.copyWith(
                  fontSize: kSize12.sp,
                  color: const Color(0xFF2C2C2E),
                ),
                children: [
                  TextSpan(
                    text: countryName,
                    style: kSemiBoldFontStyle.copyWith(
                      fontSize: kSize14.sp,
                      color: Theme.of(context).textTheme.bodyText2?.color,
                    ),
                  ),
                ]
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
