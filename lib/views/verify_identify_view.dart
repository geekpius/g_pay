
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:g_pay/constants.dart';
import 'package:g_pay/widget/common/g_app_bar.dart';
import 'package:g_pay/widget/common/g_rounded_button.dart';
import 'package:g_pay/widget/common/help_icon_action_button.dart';
import 'package:g_pay/widget/common/verification_icon_list.dart';

class VerifyIdentityView extends StatelessWidget {
  static const String routeName = 'verify_identify_screen';

  const VerifyIdentityView({Key? key}) : super(key: key);

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
        body: Padding(
          padding: EdgeInsets.only(
            top: 40.h,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: kPagePadding.w
                ),
                child: RichText(
                  text: TextSpan(
                    text: 'We need to verify \nyour ',
                    style: kSemiBoldFontStyle.copyWith(
                      fontSize: kSize30.sp,
                      color: themeColor.textTheme.bodyText2?.color,
                    ),
                    children: [
                      TextSpan(
                        text: 'identity',
                        style: kRegularFontStyle.copyWith(
                          fontSize: kSize30.sp,
                          color: themeColor.textTheme.bodyText2?.color,
                        ),
                      ),
                    ]
                  ),
                ),
              ),

              SizedBox(height: 30.h),

              Expanded(
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: kPagePadding.w,
                    vertical: 32.0.h,
                  ),
                  decoration: BoxDecoration(
                    color: kWhiteColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40.0.r),
                      topRight: Radius.circular(40.0.r)
                    )
                  ),
                  child: ListView(
                    children: [
                      const VerificationIconList(
                        assetName: 'id_card.svg',
                        text: 'Valid Government Issued ID Document Scan ',
                      ),
                      SizedBox(height: 30.0.h),
                      const VerificationIconList(
                        assetName: 'house.svg',
                        text: 'Proof of Residence Document Scan ',
                      ),
                      SizedBox(height: 30.0.h),
                      const VerificationIconList(
                        assetName: 'record.svg',
                        text: 'We will ask you to record a short video of yourself using the app ',
                        hasLearnMore: false,
                      ),

                      SizedBox(height: 50.0.h),
                      Text(
                        'Please prepare documents mentioned above!',
                        style: kSemiBoldFontStyle.copyWith(
                          fontSize: kSize18.sp,
                          color: themeColor.textTheme.bodyText1?.color,
                        ),
                        textAlign: TextAlign.center,
                      ),

                      SizedBox(height: 50.0.h),
                      Text(
                        'There may also be rare situations where we would require you to upload additional documents.',
                        style: kRegularFontStyle.copyWith(
                          fontSize: kSize14.sp,
                          color: themeColor.textTheme.headline5?.color,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 32.0.h),

                      Padding(
                        padding: EdgeInsets.only(bottom: 20.0.h),
                        child: GenioRoundedButton(
                          onPressed: null,
                          text: 'CONTINUE',
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

            ],
          ),
        ),
      ),
    );
  }
}
