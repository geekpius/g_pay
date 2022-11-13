
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:g_pay/constants.dart';
import 'package:g_pay/widget/common/g_app_bar.dart';
import 'package:g_pay/widget/common/g_rounded_button.dart';
import 'package:g_pay/widget/common/help_icon_action_button.dart';
import 'package:g_pay/widget/common/icon_back_with_background.dart';
import 'package:g_pay/widget/common/svg_icon.dart';
import 'package:g_pay/widget/transfer/transafer_exchange_rate.dart';
import 'package:g_pay/widget/transfer/transfer_info.dart';

class InternationalTransferView extends StatelessWidget {
  static const String routeName = 'international_transfer_view';

  const InternationalTransferView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeColor = Theme.of(context);
    return SafeArea(
      child: Scaffold(
        backgroundColor: kWhiteColor,
        appBar: GAppBar(
          backgroundColor: kWhiteColor,
          appBar: AppBar(),
          title: 'International transfer',
          actions: const [
            HelpIconActionButton()
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: kPagePadding.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 16.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    GSvgIcon(
                      'calendar_add.svg',
                      color: kBlackColor,
                      size: 24.0.r,
                    ),
                  ],
                ),

                SizedBox(height: 20.h),

                const TransferExchangeRate(),

                SizedBox(height: 24.h),
                TransferInfo(
                  cardTitle: 'Receiver',
                  title: Text(
                    'Jane Smith',
                    style: kSemiBoldFontStyle.copyWith(
                      fontSize: kSize12.sp,
                      color: themeColor.textTheme.subtitle2?.color,
                    ),
                  ),
                  subTitle: Text(
                    '+44567876543',
                    style: kLightFontStyle.copyWith(
                      fontSize: kSize12.sp,
                      color: themeColor.textTheme.subtitle2?.color,
                    ),
                  ),
                  leading: CircleAvatar(
                    backgroundImage: const AssetImage('$kImagePath/contact1.png'),
                    maxRadius: 20.r,
                  ),
                  trailing: GSvgIcon(
                    'arrow_right_sm.svg',
                    size: 16.r,
                    color: kGenioGreenColor,
                  ),
                ),

                SizedBox(height: 24.h),
                TransferInfo(
                  cardTitle: 'Delivery time',
                  title: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(right: 4.0.w),
                        child: GSvgIcon(
                          'power.svg',
                          size: 12.r,
                        ),
                      ),
                      Text(
                        'Instant',
                        style: kSemiBoldFontStyle.copyWith(
                          fontSize: kSize12.sp,
                          color: themeColor.textTheme.subtitle2?.color,
                        ),
                      ),
                    ],
                  ),
                  subTitle: Text(
                    'Within 30 minutes',
                    style: kLightFontStyle.copyWith(
                      fontSize: kSize12.sp,
                      color: themeColor.textTheme.subtitle2?.color,
                    ),
                  ),
                  leading: IconWithBackground(
                    child: GSvgIcon(
                      'send.svg',
                      size: 24.r,
                    ),
                  ),
                  trailing: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Free',
                            style: kSemiBoldFontStyle.copyWith(
                              fontSize: kSize12.sp,
                              color: themeColor.textTheme.bodyText1?.color,
                            ),
                          ),
                          Text(
                            '${kCurrencySymbol}3.00',
                            style: kLightFontStyle.copyWith(
                              fontSize: kSize12.sp,
                              color: themeColor.textTheme.subtitle2?.color,
                              decoration: TextDecoration.lineThrough,
                              height: 1.5
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 20.0.w),
                        child: GSvgIcon(
                          'arrow_right_sm.svg',
                          size: 16.r,
                          color: kGenioGreenColor,
                        ),
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 24.h),
                TransferInfo(
                  cardTitle: 'Payment method',
                  title: Text(
                    'Card payment',
                    style: kSemiBoldFontStyle.copyWith(
                      fontSize: kSize12.sp,
                      color: themeColor.textTheme.subtitle2?.color,
                    ),
                  ),
                  subTitle: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(right: 4.0.w),
                        child: GSvgIcon(
                          'mastercard.svg',
                          size: 12.r,
                        ),
                      ),
                      Text(
                        'Mastercard x-123',
                        style: kLightFontStyle.copyWith(
                          fontSize: kSize12.sp,
                          color: themeColor.textTheme.subtitle2?.color,
                        ),
                      ),
                    ],
                  ),
                  leading: IconWithBackground(
                    child: GSvgIcon(
                      'card.svg',
                      size: 24.r,
                    ),
                  ),
                  trailing: GSvgIcon(
                    'arrow_right_sm.svg',
                    size: 16.r,
                    color: kGenioGreenColor,
                  ),
                ),

                SizedBox(height: 24.h),
                TransferInfo(
                  cardTitle: 'Reference',
                  title: Text(
                    'School fees',
                    style: kSemiBoldFontStyle.copyWith(
                      fontSize: kSize12.sp,
                      color: themeColor.textTheme.subtitle2?.color,
                    ),
                  ),
                  leading: IconWithBackground(
                    child: GSvgIcon(
                      'message.svg',
                      size: 24.r,
                    ),
                  ),
                  trailing: GSvgIcon(
                    'arrow_right_sm.svg',
                    size: 16.r,
                    color: kGenioGreenColor,
                  ),
                ),

                SizedBox(height: 24.h),
                TransferInfo(
                  backgroundColor: kGenioGreenColor,
                  title: Text(
                    'Total to pay',
                    style: kLightFontStyle.copyWith(
                      fontSize: kSize12.sp,
                      color: themeColor.textTheme.subtitle1?.color,
                    ),
                  ),
                  subTitle:  Text(
                    '${kCurrencySymbol}1,005.00',
                    style: kSemiBoldFontStyle.copyWith(
                      fontSize: kSize16.sp,
                      color: themeColor.textTheme.subtitle1?.color,
                    ),
                  ),
                  leading: IconWithBackground(
                    backgroundColor: kGenioGreenColor,
                    child: GSvgIcon(
                      'tag.svg',
                      size: 20.r,
                      color: kWhiteColor,
                    ),
                  ),
                ),

                SizedBox(height: 40.h),
                Padding(
                  padding: EdgeInsets.only(bottom: 20.0.h),
                  child: GenioRoundedButton(
                    onPressed: null,
                    text: 'SEND',
                    textStyle: kSemiBoldFontStyle.copyWith(
                      fontSize: kSize14.sp,
                      color: themeColor.textTheme.bodyText2?.color,
                    ),
                    minWidth: double.infinity,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
