import 'package:ariam/features/boarding_screen/views/widgets/on_board_page_view.dart';
import 'package:flutter/material.dart';
import '../../../../core/utils/assets.dart';
import '../../model/board_model.dart';
import '../../../../core/widgets/app_name_and_logo.dart';

class OnBoardingBody extends StatefulWidget {
  const OnBoardingBody({super.key});

  @override
  State<OnBoardingBody> createState() => _OnBoardingBodyState();
}

class _OnBoardingBodyState extends State<OnBoardingBody> {
  List<BoardModel> boardItems = [
    BoardModel(
      body: "Women bags",
      image: AssetDate.board1,
      title: "Choose your design",
    ),
    BoardModel(
      body: "Accessories",
      image: AssetDate.board2,
      title: "New designs",
    ),
    BoardModel(
      body: "Concerts planner",
      image: AssetDate.board3,
      title: "Creativity design",
    ),
    BoardModel(
      body: "Crochet",
      image: AssetDate.board4,
      title: "Crochet products",
    ),
  ];
 

  var boardController = PageController();
  bool isLast = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const AppNameAndLogo(),
        PageViewPager(
          boardController: boardController,
          boardItems: boardItems,
        ),
      ],
    );
  }
}
