import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:g_pay/constants.dart';


class GrabbingWidget extends StatelessWidget {
  const GrabbingWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: kBlackColor.withOpacity(0.22),
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(30.0.r),
        ),
        boxShadow: [
          BoxShadow(
            color: kBlackColor.withOpacity(0.06),
            offset: const Offset(0, -2),
            blurRadius: 6,
            spreadRadius: 0,
          ),
        ],

        border: const Border(
            bottom: BorderSide.none
        ),
      ),
      child: Container(
        margin: const EdgeInsetsDirectional.only(start: 0.3, end: 0.3, top: 0.2),
        decoration: BoxDecoration(
          color: kWhiteColor,
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(30.0.r),
          ),
          border: const Border(
              bottom: BorderSide.none
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(top: 12.h),
              width: 20.w,
              height: 2.h,
              decoration: BoxDecoration(
                color: kGenioGreenColor,
                borderRadius: BorderRadius.circular(5.r),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
