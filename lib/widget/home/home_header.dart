import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:g_pay/constants.dart';
import 'package:g_pay/views/verify_identify_view.dart';
import 'package:g_pay/widget/common/g_button_detector.dart';
import 'package:g_pay/widget/common/svg_icon.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeColor = Theme.of(context);
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10.0.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            flex: 6,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                GButtonDetector(
                  onPressed: (){
                    Navigator.pushNamed(context, VerifyIdentityView.routeName);
                  },
                  child: Container(
                    height: 48.r,
                    width: 48.r,
                    padding: EdgeInsets.symmetric(
                      horizontal: 2.w,
                      vertical: 2.w
                    ),
                    decoration: const BoxDecoration(
                      color: kGenioGreenColor,
                      shape: BoxShape.circle,
                      gradient: kLinearGradient,
                    ),
                    child: CircleAvatar(
                      maxRadius: 22.r,
                      backgroundColor: kGenioGreenLightColor,
                      child: CircleAvatar(
                        maxRadius: 20.r,
                        backgroundImage: const AssetImage('assets/images/user.png'),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 10.w),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Good Morning',
                        style: kMediumFontStyle.copyWith(
                          fontSize: kSize12.sp,
                          color: themeColor.textTheme.bodyText1?.color,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'New Genius',
                        style: kBoldFontStyle.copyWith(
                          fontSize: kSize18.sp,
                          color: themeColor.textTheme.bodyText1?.color,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),

          Expanded(
            flex: 4,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 5.0.w),
                          child: GSvgIcon(
                            'tree.svg',
                            color: kGenioGreenColor,
                            size: 20.0.r,
                          ),
                        ),

                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 5.0.w),
                          child: Badge(
                            position: BadgePosition.topEnd(top: -8, end: -4),
                            animationDuration: const Duration(milliseconds: 300),
                            animationType: BadgeAnimationType.slide,
                            badgeContent: Text(
                              '5',
                              style: kRegularFontStyle.copyWith(
                                fontSize: kSize8.sp,
                                color: themeColor.textTheme.subtitle1?.color,
                              ),
                            ),
                            child: GSvgIcon(
                              'bell.svg',
                              color: kGenioGreenColor,
                              size: 20.0.r,
                            ),
                          ),
                        ),


                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 5.0.w),
                          child: GSvgIcon(
                            'question_circle.svg',
                            color: kGenioGreenColor,
                            size: 20.0.r,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          '10 000',
                          style: kMediumFontStyle.copyWith(
                            fontSize: kSize12.sp,
                            color: themeColor.textTheme.bodyText1?.color,
                          ),
                        ),
                        GSvgIcon(
                          'star.svg',
                          color: const Color(0xFFFFDA44),
                          size: 16.0.r,
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
