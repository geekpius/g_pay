import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:g_pay/constants.dart';
import 'package:g_pay/widget/common/horizontal_divider.dart';
import 'package:g_pay/widget/common/svg_icon.dart';

class ExchangeIconBar extends StatelessWidget {
  const ExchangeIconBar({
    Key? key,
    this.whereTheyReceive = ''
  }) : super(key: key);

  final String whereTheyReceive;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50.h,
      child: Stack(
        alignment: Alignment.centerLeft,
        children: [
          const HorizontalDivider(
            color: kGenioGreenLightColor,
            height: 1,
            thickness: 2.0,
          ),
          Positioned(
            top: 10,
            child: Container(
              padding: EdgeInsets.all(4.0.r),
              decoration: const BoxDecoration(
                color: kGenioGreenColor,
                shape: BoxShape.circle,
              ),
              child: GSvgIcon(
                'data_transfer.svg',
                size: 16.r,
                color: kWhiteColor,
              ),
            ),
          ),

          Positioned(
            bottom: 0,
            child: Text(
              whereTheyReceive,
              style: kLightFontStyle.copyWith(
                  fontSize: kSize6.sp,
                  color: Theme.of(context).textTheme.bodyText2?.color,
                  height: 1.9
              ),
            ),
          ),
        ],
      ),
    );
  }
}
