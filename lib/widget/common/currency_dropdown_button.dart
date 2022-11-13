import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:g_pay/constants.dart';
import 'package:g_pay/widget/common/svg_icon.dart';

class CurrencyDropdownButton extends StatelessWidget {
  const CurrencyDropdownButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 48.w,
      height: 20.0.h,
      padding: EdgeInsets.symmetric(
        horizontal: 8.0.w,
        vertical: 5.0.h,
      ),
      decoration: BoxDecoration(
          color: kGenioGreenColor.withOpacity(0.3),
          borderRadius: BorderRadius.circular(10.0.r)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            kCurrencyCode,
            style: kMediumFontStyle.copyWith(
              fontSize: kSize10.sp,
              color: Theme.of(context).textTheme.bodyText1?.color,
            ),
          ),

          GSvgIcon(
            'arrow_down.svg',
            color: kGenioGreenColor,
            size: 12.0.r,
          )
        ],
      ),
    );
  }
}
