import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:g_pay/constants.dart';

class BannerItem extends StatelessWidget {
  const BannerItem({
    Key? key,
    this.first = false,
    this.last = false,
    required this.title,
    required this.firstLine,
    this.secondLine = '',
    this.background,
  }) : super(key: key);

  final bool first;
  final bool last;
  final String title;
  final String firstLine;
  final String secondLine;
  final Color? background;

  @override
  Widget build(BuildContext context) {
    final themeColor = Theme.of(context);
    return Container(
      margin: EdgeInsets.only(
        left: first? 24.w : 16.w,
        right: last? 24.0.w : 0.w,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 15.0.w,
        vertical: 20.0.h,
      ),
      decoration: BoxDecoration(
          color: background,
          borderRadius: BorderRadius.circular(8.0.r)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: kSemiBoldFontStyle.copyWith(
                  fontSize: kSize14.sp,
                  color: themeColor.textTheme.subtitle1?.color,
                ),
              ),
              SizedBox(height: 4.0.h),
              RichText(
                text: TextSpan(
                    text: firstLine,
                    style: kLightFontStyle.copyWith(
                      fontSize: kSize10.sp,
                      color: themeColor.textTheme.subtitle1?.color,
                      letterSpacing: 0.3,
                      height: 1.5,
                    ),
                    children: [
                      TextSpan(
                        text: secondLine,
                        style: kLightFontStyle.copyWith(
                          fontSize: kSize10.sp,
                          color: themeColor.textTheme.subtitle1?.color,
                          letterSpacing: 0.3,
                          height: 1.5,
                        ),
                      ),
                    ]
                ),
              ),
            ],
          ),
          Image.asset(
            'assets/images/ed.png',
            height: 80.0,
            width: 72.0,
          )
        ],
      ),
    );
  }
}
