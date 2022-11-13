import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:g_pay/constants.dart';
import 'package:g_pay/widget/home/grabbing_widget.dart';
import 'package:g_pay/widget/home/home_bottom_sheet_content.dart';
import 'package:g_pay/widget/home/home_card.dart';
import 'package:g_pay/widget/home/home_header.dart';
import 'package:snapping_sheet/snapping_sheet.dart';


class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final _snappingSheetController = SnappingSheetController();
  final _scrollController = ScrollController();
  List<Map<String, dynamic>> cardActionButtons = [
    {
      'icon': 'arrow_right_square.svg',
      'text': 'Pay out',
    },
    {
      'icon': 'login.svg',
      'text': 'Pay in',
    },
    {
      'icon': 'swap.svg',
      'text': 'Exchange',
    },
    {
      'icon': 'category.svg',
      'text': 'More',
    }
  ];


  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kGenioGreenLightColor,
      body: SnappingSheet(
        controller: _snappingSheetController,
        lockOverflowDrag: true,
        snappingPositions: [
          SnappingPosition.factor(
            positionFactor: Constant.kSize(MediaQuery.of(context).size.height, 0.34, 0.42),
            grabbingContentOffset: GrabbingContentOffset.top,
          ),
          const SnappingPosition.factor(
            grabbingContentOffset: GrabbingContentOffset.bottom,
            positionFactor: 1.0,
          ),
        ],

        grabbing: const GrabbingWidget(),
        grabbingHeight: 30,
        sheetBelow: SnappingSheetContent(
          draggable: true,
          childScrollController: _scrollController,
          child: HomeBottomSheetContent(
            scrollController: _scrollController,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: kPagePadding.w),
          child: Column(
            children: [
              const HomeHeader(),
              SizedBox(height: Constant.kSize(MediaQuery.of(context).size.height, 20.h, 34.h)),
              HomeCard(
                cardActionButtons: cardActionButtons,
              ),
            ],
          ),
        )
      ),
    );
  }
}



