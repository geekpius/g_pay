import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:g_pay/constants.dart';

class TransactionListTile extends StatelessWidget {
  const TransactionListTile({
    Key? key,
    required this.avatar,
    required this.text,
    required this.date,
    required this.amount,
    required this.status,
  }) : super(key: key);

  final String avatar;
  final String text;
  final String date;
  final String amount;
  final String status;

  @override
  Widget build(BuildContext context) {
    final themeColor = Theme.of(context);
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: CircleAvatar(
        maxRadius: 24.0.r,
        backgroundColor: kGenioGreenLightColor,
        child: CircleAvatar(
          maxRadius: 16.0.r,
          backgroundColor: kGenioGreenLightColor,
          backgroundImage: AssetImage(avatar),
        ),
      ),
      title: Text(
         text,
        style: kRegularFontStyle.copyWith(
          fontSize: kSize13.sp,
          color: themeColor.textTheme.subtitle2?.color,
        ),
      ),
      subtitle: Text(
        date,
        style: kRegularFontStyle.copyWith(
          fontSize: kSize13.sp,
          color: themeColor.textTheme.headline2?.color,
        ),
      ),
      trailing: Padding(
        padding: EdgeInsets.only(top: 10.0.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Flexible(
              flex: 5,
              child: Text(
                '-$kCurrencySymbol $amount',
                style: kRegularFontStyle.copyWith(
                  fontSize: kSize13.sp,
                  color: themeColor.textTheme.headline1?.color,
                ),
                textAlign: TextAlign.right,
              ),
            ),
            SizedBox(height: 4.0.h),
            Flexible(
              flex: 5,
              child: Text(
                status,
                style: kRegularFontStyle.copyWith(
                    fontSize: kSize10.sp,
                    color: status.toLowerCase() == 'completed'? themeColor.textTheme.headline3?.color : themeColor.textTheme.headline4?.color,
                    letterSpacing: 0.3
                ),
                textAlign: TextAlign.right,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
