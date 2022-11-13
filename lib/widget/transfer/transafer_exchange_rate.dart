import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:g_pay/constants.dart';
import 'package:g_pay/widget/common/svg_icon.dart';
import 'package:g_pay/widget/transfer/exchange_icon_bar.dart';

class TransferExchangeRate extends StatelessWidget {
  const TransferExchangeRate({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeColor = Theme.of(context);
    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: 24.0.w,
          vertical: 16.0.h
      ),
      decoration: BoxDecoration(
        color: kWhiteColor,
        borderRadius: BorderRadius.circular(20.0.r),
        boxShadow: [
          BoxShadow(
            color: const Color(0xFF07051A).withOpacity(0.07),
            blurRadius: 50.0,
            spreadRadius: 0.0,
            offset: const Offset(0.0, 8.0),
          )
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'You send from Poland',
                style: kLightFontStyle.copyWith(
                  fontSize: kSize6.sp,
                  color: themeColor.textTheme.bodyText2?.color,
                ),
              ),
              Text(
                '1 USD = 0.94 EUR',
                style: kLightFontStyle.copyWith(
                  fontSize: kSize6.sp,
                  color: themeColor.textTheme.bodyText2?.color,
                ),
              ),
            ],
          ),
          SizedBox(height: 14.h),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  GSvgIcon(
                    'usa.svg',
                    size: 24.r,
                  ),
                  SizedBox(width: 8.0.w),
                  RichText(
                    text: TextSpan(
                      text: kCurrencyCode,
                      style: kMediumFontStyle.copyWith(
                        fontSize: kSize14.sp,
                        color: const Color(0xFF0B252D),
                      ),
                    ),
                  ),
                  GSvgIcon(
                    'arrow_down.svg',
                    size: 10.r,
                    color: const Color(0xFF0B252D),
                  ),
                ],
              ),
              Expanded(
                child: RichText(
                  text: TextSpan(
                      text: kCurrencySymbol,
                      style: kSemiBoldFontStyle.copyWith(
                        fontSize: kSize16.sp,
                        color: themeColor.textTheme.bodyText2?.color,
                      ),
                      children: [
                        TextSpan(
                          text: '1,000.00',
                          style: kSemiBoldFontStyle.copyWith(
                            fontSize: kSize25.sp,
                            color: themeColor.textTheme.bodyText2?.color,
                          ),
                        ),
                      ]
                  ),
                  textAlign: TextAlign.right,
                ),
              ),
            ],
          ),
          const ExchangeIconBar(
            whereTheyReceive: 'They receive in Italy',
          ),
          SizedBox(height: 8.h),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  GSvgIcon(
                    'usa.svg',
                    size: 24.r,
                  ),
                  SizedBox(width: 8.0.w),
                  RichText(
                    text: TextSpan(
                      text: kCurrencyCode,
                      style: kMediumFontStyle.copyWith(
                        fontSize: kSize14.sp,
                        color: const Color(0xFF0B252D),
                      ),
                    ),
                  ),
                  GSvgIcon(
                    'arrow_down.svg',
                    size: 10.r,
                    color: const Color(0xFF0B252D),
                  ),
                ],
              ),
              Expanded(
                child: RichText(
                  text: TextSpan(
                      text: kPoundSymbol,
                      style: kSemiBoldFontStyle.copyWith(
                        fontSize: kSize16.sp,
                        color: themeColor.textTheme.bodyText1?.color,
                      ),
                      children: [
                        TextSpan(
                          text: '935.34',
                          style: kSemiBoldFontStyle.copyWith(
                            fontSize: kSize25.sp,
                            color: themeColor.textTheme.bodyText1?.color,
                          ),
                        ),
                      ]
                  ),
                  textAlign: TextAlign.right,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
