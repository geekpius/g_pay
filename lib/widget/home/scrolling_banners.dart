import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:g_pay/constants.dart';
import 'package:g_pay/widget/home/banner_item.dart';

class ScrollingBanners extends StatelessWidget {
  const ScrollingBanners({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> banners = [
      {
        'title': 'Invite your friends',
        'firstLine': 'For every invite, you win ${kCurrencySymbol}20!\n',
        'secondLine': 'Click here to start inviting your friends.',
        'banner': 'assets/images/ed.png',
        'background': kGenioBlueColor,
      },
      {
        'title': 'Invite your friends',
        'firstLine': 'For every invite, you win ${kCurrencySymbol}20!\n',
        'secondLine': 'Click here to start inviting your friends.',
        'banner': 'assets/images/ed.png',
        'background': kGenioRedColor,
      },
    ];

    return SizedBox(
      height: 100.0.h,
      width: double.infinity,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: List.generate(banners.length, (index) {
            final banner = banners[index];
            return BannerItem(
              first: index == 0,
              last: index == banners.length-1,
              title: banner['title']?? '',
              firstLine: banner['firstLine']?? '',
              secondLine: banner['secondLine']?? '',
              background: banner['background'],
            );
          }),
        ),
      ),
    );
  }
}
