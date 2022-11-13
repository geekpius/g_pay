import 'package:flutter/material.dart';

const kMultiplier = 0.0012;
const kMultiplierHalf = 0.0006;
const kSize6 = 6.0;
const kSize8 = 8.0;
const kSize10 = 10.0;
const kSize11 = 11.0;
const kSize12 = 12.0;
const kSize13 = 13.0;
const kSize14 = 14.0;
const kSize16 = 16.0;
const kSize17 = 17.0;
const kSize18 = 18.0;
const kSize20 = 20.0;
const kSize24 = 24.0;
const kSize25 = 25.0;
const kSize30 = 30.0;
const kSize32 = 32.0;
const kSize34 = 34.0;
const kSize44 = 44.0;

const kWhiteColor = Color(0xFFFFFFFF);
Color kWhiteColor35 = const Color(0xFFFFFFFF).withOpacity(0.35);
const kBlackColor = Color(0xFF000000);
Color kBlackColor60 = const Color(0xFF000000).withOpacity(0.60);
const kGenioRedColor = Color(0xFFDF334F);
const kLightBlackColor = Color(0xFF525252);
const kGenioGreenColor = Color(0xFF008AA7);
const kGenioGreenLightColor = Color(0xFFE0F7FE);
const kGenioBlueColor = Color(0xFF117AFA);
const kGenioSuccessColor = Color(0xFF15CF74);
const kGenioInProgressColor = Color(0xFFFB923C);
const kButtonYellowColor = Color(0xFFEBD75C);


const kPagePadding = 24.0;
const kPageTopPadding = 32.0;

const kBoldFontStyle = TextStyle(
  fontWeight: FontWeight.w700,
  fontStyle: FontStyle.normal,
  fontFamily: "IBMPlexSans-Bold",
);

const kBoldItalicFontStyle = TextStyle(
  fontWeight: FontWeight.w700,
  fontStyle: FontStyle.italic,
  fontFamily: "IBMPlexSans-Bold",
);

const kSemiBoldFontStyle = TextStyle(
  fontWeight: FontWeight.w600,
  fontStyle: FontStyle.normal,
  fontFamily: "IBMPlexSans-SemiBold",
);

const kSemiBoldItalicFontStyle = TextStyle(
  fontWeight: FontWeight.w600,
  fontStyle: FontStyle.italic,
  fontFamily: "IBMPlexSans-SemiBold",
);

const kMediumFontStyle = TextStyle(
  fontWeight: FontWeight.w500,
  fontStyle: FontStyle.normal,
  fontFamily: "IBMPlexSans-Medium",
);

const kMediumItalicFontStyle = TextStyle(
  fontWeight: FontWeight.w500,
  fontStyle: FontStyle.italic,
  fontFamily: "IBMPlexSans-Medium",
);

const kRegularFontStyle = TextStyle(
  fontWeight: FontWeight.w400,
  fontStyle: FontStyle.normal,
  fontFamily: "IBMPlexSans-Regular",
);

const kRegularItalicFontStyle = TextStyle(
  fontWeight: FontWeight.w400,
  fontStyle: FontStyle.italic,
  fontFamily: "IBMPlexSans-Regular",
);

const kLightFontStyle = TextStyle(
  fontWeight: FontWeight.w300,
  fontStyle: FontStyle.normal,
  fontFamily: "Roboto-Light",
);

const kLightItalicFontStyle = TextStyle(
  fontWeight: FontWeight.w300,
  fontStyle: FontStyle.italic,
  fontFamily: "Roboto-Light",
);

const kLinearGradient = LinearGradient(
  begin: Alignment(0.5, -3.0616171314629196e-17 ),
  end: Alignment(0.5, 0.9999999999999999 ),
  colors: [
    kGenioGreenColor,
    kGenioGreenLightColor,
  ],
);


const kKeyBoardDone = Text(
  'Done',
  style: TextStyle(
    color: kWhiteColor,
    fontSize: 16.0,
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.normal,
    fontFamily: "Roboto-Regular",
  ),
);

const kBigScreenHeight = 670;

const kCurrencyCode = 'USD';
const kCurrencySymbol = '\$';
const kPoundSymbol = '€';

// asset path
const kImagePath = 'assets/images';
const kSvgPath = 'assets/svgs';


class Constant{
  static double kSize(double mediaQueryHeight, double onSmallScreen, double onBigScreen) {
    return mediaQueryHeight <= kBigScreenHeight ? onSmallScreen : onBigScreen;
  }
}
