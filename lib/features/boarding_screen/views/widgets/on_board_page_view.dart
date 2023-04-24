import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../../../core/utils/app_routs.dart';
import '../../../../core/utils/colors.dart';
import '../../../../core/utils/shared_prefrence.dart';
import '../../../../core/utils/size.dart';
import '../../../../core/widgets/custom_button.dart';
import '../../model/board_model.dart';
import 'on_board_item.dart';

class PageViewPager extends StatefulWidget {
  const PageViewPager({
    super.key,
    required this.boardController,
    required this.boardItems,
  });

  final PageController boardController;
  final List<BoardModel> boardItems;

  @override
  State<PageViewPager> createState() => _PageViewPagerState();
}

class _PageViewPagerState extends State<PageViewPager> {
 bool isLast = false;
  void submit() {
    CacheHelper.saveData(
      key: 'onBoarding',
      value: true,
    ).then((value) {
      if (value) {
        // 
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: CustomSize().heightSize(context, .45),
          child: PageView.builder(
            scrollDirection: Axis.horizontal,
            controller: widget.boardController,
            itemCount: widget.boardItems.length,
            itemBuilder: (context, index) {
              return OnBoardItems(
                boardModel: widget.boardItems[index],
              );
            },
            onPageChanged: (value) {
              if (value == widget.boardItems.length - 1) {
                setState(() {
                  submit();
                  isLast = true;
                });
              } else {
                setState(() {
                  isLast = false;
                });
              }
            },
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        SmoothPageIndicator(
          controller: widget.boardController,
          count: widget.boardItems.length,
          effect: const ExpandingDotsEffect(
              dotColor: AppColors.whiteColor,
              activeDotColor: AppColors.secondColor,
              dotHeight: 10,
              dotWidth: 10,
              spacing: 10,
              expansionFactor: 2.0),
        ),
        const SizedBox(
          height: 10,
        ),
        Center(
          child: isLast == true
              ? CustomButton(
                  function: () {
                    submit();
                    GoRouter.of(context).pushReplacement(AppRouter.signInScreen);
                  },
                  buttonName: "Find what you want",
                )
              : null,
        )
      ],
    );
  }
}
