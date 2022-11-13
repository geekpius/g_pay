import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:g_pay/constants.dart';
import 'package:g_pay/widget/transfer/transfer_info_list_tile.dart';

class TransferInfo extends StatelessWidget {
  const TransferInfo({
    Key? key,
    this.cardTitle,
    this.title,
    this.subTitle,
    this.trailing,
    this.leading,
    this.backgroundColor = kWhiteColor,
  }) : super(key: key);

  final String? cardTitle;
  final Widget? title;
  final Widget? subTitle;
  final Widget? trailing;
  final Widget? leading;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    final themeColor = Theme.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if(cardTitle!=null) Text(
          '$cardTitle',
          style: kMediumFontStyle.copyWith(
            fontSize: kSize14.sp,
            color: themeColor.textTheme.bodyText1?.color,
          ),
        ),
        Container(
          height: 74.h,
          alignment: Alignment.center,
          margin: EdgeInsets.only(top: 8.0.h),
          padding: EdgeInsets.symmetric(horizontal: 24.0.w),
          decoration: BoxDecoration(
            color: backgroundColor,
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
          child: TransferInfoListTile(
            title: title,
            subTitle: subTitle,
            trailing: trailing,
            leading: leading,
          ),
        ),
      ],
    );
  }
}
