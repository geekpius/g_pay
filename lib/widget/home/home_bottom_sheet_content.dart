import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:g_pay/constants.dart';
import 'package:g_pay/widget/home/scrolling_banners.dart';
import 'package:g_pay/widget/home/transaction_list_view.dart';

class HomeBottomSheetContent extends StatelessWidget {
  const HomeBottomSheetContent({
    Key? key,
    required this.scrollController,
  }) : super(key: key);

  final ScrollController scrollController;

  @override
  Widget build(BuildContext context) {
    final themeColor = Theme.of(context);

    List<Map<String, dynamic>> transactions = [
      {
        "avatar": 'assets/images/dribble.png',
        "text": 'Dribble',
        "date": '2022.05.04',
        "amount": '99.00',
        "status": 'Completed',
      },
      {
        "avatar": 'assets/images/spotify.png',
        "text": 'Spotify',
        "date": '2022.08.04',
        "amount": '99.00',
        "status": 'In Progress',
      },
      {
      "avatar": 'assets/images/spotify.png',
      "text": 'Spotify',
      "date": '2022.11.04',
      "amount": '99.00',
      "status": 'Completed',
      },
      {
        "avatar": 'assets/images/dribble.png',
        "text": 'Dribble',
        "date": '2022.11.10',
        "amount": '25.00',
        "status": 'In Progress',
      },
    ];

    return Container(
      color: kWhiteColor,
      child: Column(
        children: [
          const ScrollingBanners(),
          SizedBox(height: 16.0.h),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: kPagePadding.w
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                        flex: 5,
                        child: Text(
                          'Transactions',
                          style: kSemiBoldFontStyle.copyWith(
                            fontSize: kSize14.sp,
                            color: themeColor.textTheme.subtitle2?.color,
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 5,
                        child: Text(
                          'View All',
                          style: kRegularFontStyle.copyWith(
                            fontSize: kSize12.sp,
                            color: themeColor.textTheme.headline1?.color,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 16.0.h),
                  Expanded(
                    child: TransactionListView(
                      scrollController: scrollController,
                      transactions: transactions,
                    ),
                  ),
                ],
              ),
            ),
          ),

        ],
      ),
    );
  }
}
