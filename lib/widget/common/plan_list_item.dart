import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:g_pay/constants.dart';

class PlanListItem extends StatelessWidget {
  const PlanListItem({
    Key? key,
    required this.text,
    this.amount = '',
    this.description = '',
  }) : super(key: key);

  final String text;
  final String amount;
  final String description;

  @override
  Widget build(BuildContext context) {
    final themeColor = Theme.of(context);
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Flexible(
          flex: 5,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                text,
                style: kMediumFontStyle.copyWith(
                  fontSize: kSize16.sp,
                  color: themeColor.textTheme.bodyText2?.color,
                ),
              ),
              if(description.isNotEmpty) Text(
                description,
                style: kLightFontStyle.copyWith(
                  fontSize: kSize16.sp,
                  color: themeColor.textTheme.headline6?.color,
                  height: 2.4,
                ),
              ),
            ],
          ),
        ),
        Flexible(
          flex: 5,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              if(amount.isNotEmpty) Text(
                'Up to',
                style: kLightFontStyle.copyWith(
                  fontSize: kSize12.sp,
                  color: themeColor.textTheme.headline6?.color,
                ),
                textAlign: TextAlign.right,
              ),
              Text(
                amount.isEmpty? 'N/A' : '$kPoundSymbol$amount',
                style: kMediumFontStyle.copyWith(
                    fontSize: kSize16.sp,
                    color: themeColor.textTheme.bodyText2?.color,
                    height: 1.8
                ),
                textAlign: TextAlign.right,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
