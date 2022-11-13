
import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:g_pay/constants.dart';
import 'package:g_pay/widget/common/g_app_bar.dart';
import 'package:g_pay/widget/common/g_checkbox.dart';
import 'package:g_pay/widget/common/g_input_field.dart';
import 'package:g_pay/widget/common/g_rounded_button.dart';
import 'package:g_pay/widget/common/help_icon_action_button.dart';
import 'package:g_pay/widget/common/svg_icon.dart';
import 'package:g_pay/widget/registration/country_field_prefix.dart';
import 'package:g_pay/widget/registration/country_select_button.dart';
import 'package:g_pay/widget/registration/tax_item.dart';

class TaxRegistrationView extends StatelessWidget {
  static const String routeName = 'tax_registration_view';

  const TaxRegistrationView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeColor = Theme.of(context);
    return SafeArea(
      child: Scaffold(
        backgroundColor: kWhiteColor,
        appBar: GAppBar(
          backgroundColor: kWhiteColor,
          appBar: AppBar(),
          title: 'Registration',
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
                SizedBox(height: 10.h),
                RichText(
                  text: TextSpan(
                    text: 'Individual Self-Certification relevant for ',
                    style: kRegularFontStyle.copyWith(
                      fontSize: kSize16.sp,
                      color: themeColor.textTheme.bodyText2?.color,
                    ),
                    children: [
                      TextSpan(
                        text: 'FATCA ',
                        style: kSemiBoldFontStyle.copyWith(
                          fontSize: kSize16.sp,
                          color: themeColor.textTheme.bodyText1?.color,
                        ),
                      ),
                      TextSpan(
                        text: 'and ',
                        style: kRegularFontStyle.copyWith(
                          fontSize: kSize16.sp,
                          color: themeColor.textTheme.bodyText2?.color,
                        ),
                      ),
                      TextSpan(
                        text: 'CRS ',
                        style: kSemiBoldFontStyle.copyWith(
                          fontSize: kSize16.sp,
                          color: themeColor.textTheme.bodyText1?.color,
                        ),
                      ),
                      TextSpan(
                        text: 'purposes',
                        style: kRegularFontStyle.copyWith(
                          fontSize: kSize16.sp,
                          color: themeColor.textTheme.bodyText2?.color,
                        ),
                      ),
                    ]
                  ),
                  textAlign: TextAlign.center,
                ),

                SizedBox(height: 24.h),

                const TaxItem(
                  title: '1. Country of your Tax Residence\n',
                  text: 'Please indicate all countries, also domestic, where you are tax resident and your TIN (Taxpayer Identification Number) for each country: ',
                ),

                SizedBox(height: 24.h),

                GInputField(
                  onTap: (){
                    // showCountryPicker(
                    //   context: context,
                    //   countryListTheme: CountryListThemeData(
                    //     flagSize: 25,
                    //     backgroundColor: Colors.white,
                    //     textStyle: kRegularFontStyle.copyWith(
                    //         fontSize: kSize14.sp,
                    //         color: Theme.of(context).textTheme.bodyText2!.color
                    //     ),
                    //     bottomSheetHeight: MediaQuery.of(context).size.height * 0.90,
                    //     borderRadius: BorderRadius.only(
                    //       topLeft: Radius.circular(20.0.r),
                    //       topRight: Radius.circular(20.0.r),
                    //     ),
                    //     inputDecoration: InputDecoration(
                    //       labelText: 'Search',
                    //       hintText: 'Start typing to search',
                    //       helperStyle: kLightFontStyle.copyWith(
                    //         fontSize: kSize14.sp,
                    //         color: const Color(0xFF2C2C2E),
                    //       ),
                    //       prefixIcon: const Icon(Icons.search),
                    //       border: OutlineInputBorder(
                    //         borderRadius: BorderRadius.all(Radius.circular(10.0 .r)),
                    //       ),
                    //       enabledBorder: OutlineInputBorder(
                    //         borderSide: const BorderSide(color: kGenioGreenColor, width: 1.0),
                    //         borderRadius: BorderRadius.all(Radius.circular(10.0.r)),
                    //       ),
                    //       focusedBorder: OutlineInputBorder(
                    //         borderSide: const BorderSide(color: kGenioGreenColor, width: 1.0),
                    //         borderRadius: BorderRadius.all(Radius.circular(10.0.r)),
                    //       ),
                    //     ),
                    //   ),
                    //   onSelect: (Country country) {
                    //     print('Select country: ${country.displayName}');
                    //   },
                    // );
                  },
                  hintText: '',
                  filled: true,
                  readOnly: true,
                  prefixIcon: const CountryFieldPrefix(
                    countryName: 'Brasil',
                  ),
                ),
                SizedBox(height: 8.h),
                const GInputField(
                  hintText: 'Enter TIN',
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    GSvgIcon(
                      'trash.svg',
                      color: kGenioGreenColor,
                      size: 16.0.r,
                    ),
                  ],
                ),
                SizedBox(height: 16.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    CountrySelectButton(onPressed: null),
                  ],
                ),

                SizedBox(height: 40.h),
                const TaxItem(
                  title: '2. FATCA related\n',
                  text: 'Please select one of the options by checking the corresponding box below:',
                ),
                SizedBox(height: 20.h),

                TaxItem(
                  customize: true,
                  hasBottomBorder: true,
                  children: [
                    Flexible(
                    flex: 7,
                    child:  RichText(
                      text: TextSpan(
                          text: 'I herby certify that ',
                          style: kLightFontStyle.copyWith(
                            fontSize: kSize14.sp,
                            color: themeColor.textTheme.headline1?.color,
                            letterSpacing: 0.3,
                          ),
                          children: [
                            TextSpan(
                              text: 'I am a tax resident of the United States ',
                              style: kSemiBoldFontStyle.copyWith(
                                fontSize: kSize14.sp,
                                color: themeColor.textTheme.bodyText1?.color,
                                letterSpacing: 0.3,
                              ),
                            ),
                            TextSpan(
                              text: 'and that I have designated the United States as one of the countries in the above section.',
                              style: kLightFontStyle.copyWith(
                                fontSize: kSize14.sp,
                                color: themeColor.textTheme.headline1?.color,
                                letterSpacing: 0.3,
                              ),
                            ),
                          ]
                      ),
                    ),
                  ),
                    Flexible(
                  flex: 3,
                  child: GCheckBox(
                    onChanged: (bool? value) {  },
                  ),
                ),
                  ],
                ),
                SizedBox(height: 20.h),
                TaxItem(
                  customize: true,
                  hasBottomBorder: true,
                  children: [
                    Flexible(
                      flex: 7,
                      child:  RichText(
                        text: TextSpan(
                            text: 'I herby certify that ',
                            style: kLightFontStyle.copyWith(
                              fontSize: kSize14.sp,
                              color: themeColor.textTheme.headline1?.color,
                              letterSpacing: 0.3,
                            ),
                            children: [
                              TextSpan(
                                text: 'I am not a tax resident of the United States ',
                                style: kSemiBoldFontStyle.copyWith(
                                  fontSize: kSize14.sp,
                                  color: themeColor.textTheme.bodyText1?.color,
                                  letterSpacing: 0.3,
                                ),
                              ),
                            ]
                        ),
                      ),
                    ),
                    Flexible(
                      flex: 3,
                      child: GCheckBox(
                        onChanged: (bool? value) {  },
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20.h),
                TaxItem(
                  customize: true,
                  hasBottomBorder: true,
                  children: [
                    Flexible(
                      flex: 7,
                      child:  RichText(
                        text: TextSpan(
                            text: '3. Declaration\n',
                            style: kSemiBoldFontStyle.copyWith(
                              fontSize: kSize16.sp,
                              color: themeColor.textTheme.bodyText1?.color,
                            ),
                            children: [
                              TextSpan(
                                text: 'I herby declare that the information provided on this form is complete, correct and true. The information provided may be used for reporting purposes according to local law. I agree that I will inform you within 30 days if any certification on this form becomes incorrect or will no longer be applied.',
                                style: kLightFontStyle.copyWith(
                                  fontSize: kSize14.sp,
                                  color: themeColor.textTheme.headline1?.color,
                                  letterSpacing: 0.3,
                                ),
                              ),
                            ]
                        ),
                      ),
                    ),
                    Flexible(
                      flex: 3,
                      child: GCheckBox(
                        onChanged: (bool? value) {  },
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 34.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Date: 15.08.2022',
                      style: kSemiBoldFontStyle.copyWith(
                        fontSize: kSize14.sp,
                        color: themeColor.textTheme.bodyText1?.color,
                      ),
                    )
                  ],
                ),
                SizedBox(height: 16.h),
                GenioRoundedButton(
                  onPressed: null,
                  text: 'CONTINUE',
                  minWidth: double.infinity,
                  textStyle: kLightFontStyle.copyWith(
                    color: themeColor.textTheme.headline6?.color,
                    fontSize: kSize14.sp,
                  ),
                  color: kGenioGreenLightColor,
                  borderColor: kGenioGreenLightColor,
                ),
                SizedBox(height: 30.h),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
