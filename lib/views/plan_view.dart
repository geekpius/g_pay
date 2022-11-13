
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:g_pay/constants.dart';
import 'package:g_pay/widget/common/g_app_bar.dart';
import 'package:g_pay/widget/common/g_indicator.dart';
import 'package:g_pay/widget/common/g_terms_conditions.dart';
import 'package:g_pay/widget/common/help_icon_action_button.dart';
import 'package:g_pay/widget/common/horizontal_divider.dart';
import 'package:g_pay/widget/common/plan_list_item.dart';
import 'package:g_pay/widget/common/svg_icon.dart';

class PlanView extends StatelessWidget {
  static const String routeName = 'plan_view';

  const PlanView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeColor = Theme.of(context);
    return SafeArea(
      child: Scaffold(
        appBar: GAppBar(
            appBar: AppBar(),
          actions: const [
            HelpIconActionButton()
          ],
        ),
        body: Stack(
          alignment: Alignment.topCenter,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: 50.w
              ),
              child: Text(
                'The more money you send, the better your insurance gets ',
                style: kMediumFontStyle.copyWith(
                  fontSize: kSize18.sp,
                  color: themeColor.textTheme.bodyText1?.color,
                ),
                textAlign: TextAlign.center,
              ),
            ),

            Column(
              children: [
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.12),
                    padding: EdgeInsets.only(
                      left: kPagePadding.w,
                      right: kPagePadding.w,
                      top: 43.0.h,
                    ),
                    decoration: BoxDecoration(
                      color: kWhiteColor,
                      borderRadius: BorderRadius.circular(20.0.r),
                    ),
                    child: ListView(
                      children: [
                        Text(
                          'Basic Plan',
                          style: kBoldFontStyle.copyWith(
                            fontSize: kSize30.sp,
                            color: themeColor.textTheme.bodyText2?.color,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: 8.0.h),
                        Text(
                          'Send €200 (or more) per \nmonth and get coverage for:',
                          style: kMediumFontStyle.copyWith(
                            fontSize: kSize18.sp,
                            color: themeColor.textTheme.bodyText1?.color,
                          ),
                          textAlign: TextAlign.center,
                        ),

                        SizedBox(height: 32.0.h),

                        const PlanListItem(
                          text: 'Accidental death, dismemberment, or paralysis',
                          amount: '5,000',
                        ),

                        SizedBox(height: 16.0.h),
                        const HorizontalDivider(),
                        SizedBox(height: 16.0.h),

                        const PlanListItem(
                          text: 'Temporary total disability ',
                          description: '(caused by an accident)',
                        ),

                        SizedBox(height: 16.0.h),
                        const HorizontalDivider(),
                        SizedBox(height: 16.0.h),
                        Text(
                          'In case of death due to an accident:',
                          style: kMediumFontStyle.copyWith(
                            fontSize: kSize14.sp,
                            color: themeColor.textTheme.bodyText1?.color,
                          ),
                          textAlign: TextAlign.left,
                        ),
                        SizedBox(height: 16.0.h),

                        const PlanListItem(
                          text: 'Funeral costs',
                        ),
                        SizedBox(height: 8.0.h),

                        Text(
                          'OR',
                          style: kLightFontStyle.copyWith(
                            fontSize: kSize16.sp,
                            color: themeColor.textTheme.headline6?.color,
                          ),
                        ),
                        SizedBox(height: 8.0.h),
                        const PlanListItem(
                          text: 'Reparation',
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 18.0.h,
                    bottom: 10.h,
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(3, (index){
                          return GIndicator(
                            selected: index == 1,
                          );
                        }),
                      ),
                      SizedBox(height: 10.0.h),
                      const GTermsAndConditions(),
                    ],
                  ),
                ),
              ],
            ),

            Positioned(
              top: 55.h,
              child: Container(
                height: 90.r,
                width: 90.r,
                decoration:  BoxDecoration(
                  color: const Color.fromRGBO(255, 255, 255, 0.15).withOpacity(0.07),
                  shape: BoxShape.circle,
                  gradient: const LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color(0xFF3EC9E7),
                      kGenioGreenColor,
                    ],
                  ),
                ),
                child: Align(
                  alignment: Alignment.center,
                  child: Container(
                    padding: EdgeInsets.all(20.0.r),
                    decoration: const BoxDecoration(
                      color: kGenioGreenColor,
                      shape: BoxShape.circle,
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Color(0xFF3EC9E7),
                          kGenioGreenColor,
                        ],
                      ),
                    ),
                    child: GSvgIcon(
                      'b_plan.svg',
                      size: 50.0.r,
                      color: kWhiteColor,
                    )
                  ),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
