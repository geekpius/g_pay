import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:g_pay/constants.dart';
import 'package:g_pay/widget/common/g_button_detector.dart';
import 'package:g_pay/widget/common/svg_icon.dart';

class CountrySelectButton extends StatelessWidget {
  const CountrySelectButton({
    Key? key,
    required this.onPressed,
  }) : super(key: key);

  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return GButtonDetector(
      onPressed: onPressed,
      child: Column(
        children: [
          CircleAvatar(
            backgroundColor: kGenioGreenLightColor,
            maxRadius: 24.r,
            child: GSvgIcon(
              'plus.svg',
              color: kBlackColor,
              size: 16.0.r,
            ),
          ),
          SizedBox(height: 8.h),
          Text(
            'Add another country',
            style: kLightFontStyle.copyWith(
              fontSize: kSize14.sp,
              color: Theme.of(context).textTheme.subtitle2?.color,
            ),
          ),
        ],
      ),
    );
  }
}
