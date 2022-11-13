import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:g_pay/constants.dart';
import 'package:g_pay/views/international_transfer_view.dart';
import 'package:g_pay/views/plan_view.dart';
import 'package:g_pay/views/tax_registration_view.dart';
import 'package:g_pay/views/verify_identify_view.dart';
import 'package:g_pay/widget/common/currency_dropdown_button.dart';
import 'package:g_pay/widget/common/g_button_detector.dart';
import 'package:g_pay/widget/common/horizontal_divider.dart';
import 'package:g_pay/widget/common/svg_icon.dart';
import 'package:g_pay/widget/home/card_icon_action.dart';

class HomeCard extends StatelessWidget {
  const HomeCard({
    Key? key,
    required this.cardActionButtons,
  }) : super(key: key);

  final List<Map<String, dynamic>> cardActionButtons;

  @override
  Widget build(BuildContext context) {
    final mediaQueryHeight = MediaQuery.of(context).size.height;
    final themeColor = Theme.of(context);
    return Container(
      padding: EdgeInsets.symmetric(
          vertical: 1.0.h,
          horizontal: 1.0.w
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.0.r),
        gradient: kLinearGradient,
      ),

      child: Container(
        padding: EdgeInsets.symmetric(
            vertical: Constant.kSize(mediaQueryHeight, 20.h, 27.h),
            horizontal: Constant.kSize(mediaQueryHeight, 15.w, 17.w)
        ),
        decoration: BoxDecoration(
          color: kGenioGreenLightColor,
          borderRadius: BorderRadius.circular(30.0.r),
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(width: 25.w),
                Text(
                  'Total Balance',
                  style: kRegularFontStyle.copyWith(
                    fontSize: kSize12.sp,
                    color: themeColor.textTheme.bodyText1?.color,
                  ),
                ),
                GSvgIcon(
                  'eye.svg',
                  color: kGenioGreenColor,
                  size: 16.0.r,
                )
              ],
            ),
            Text(
              '${kCurrencySymbol}450.49',
              style: kSemiBoldFontStyle.copyWith(
                fontSize: kSize44.sp,
                color: themeColor.textTheme.bodyText1?.color,
              ),
            ),

            SizedBox(height: Constant.kSize(mediaQueryHeight, 14.h, 20.h)),

            const CurrencyDropdownButton(),

            SizedBox(height: Constant.kSize(mediaQueryHeight, 16.h, 24.h)),
            const HorizontalDivider(
              color: kGenioGreenColor,
              thickness: 0.5,
              height: 1,
            ),
            SizedBox(height: Constant.kSize(mediaQueryHeight, 12.h, 16.h)),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(cardActionButtons.length, (index) {
                final button = cardActionButtons[index];
                return GButtonDetector(
                  onPressed: (){
                    if(index == 0){
                      Navigator.pushNamed(context, TaxRegistrationView.routeName);
                      return;
                    }
                    if(index == 1){
                      Navigator.pushNamed(context, PlanView.routeName);
                      return;
                    }
                    if(index == 2){
                      Navigator.pushNamed(context, InternationalTransferView.routeName);
                      return;
                    }
                    if(index == cardActionButtons.length-1){
                      Navigator.pushNamed(context, VerifyIdentityView.routeName);
                      return;
                    }
                  },
                  child: CardIconAction(
                    last: index == cardActionButtons.length-1,
                    text: button['text']?? '',
                    assetName: button['icon'],
                  ),
                );
              }),
            ),

          ],
        ),
      ),
    );
  }
}
