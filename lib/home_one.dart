import 'package:flutter/material.dart';
import 'package:new_app/images.dart';
import 'package:new_app/screens.dart';

class HomeOne extends StatefulWidget {
  const HomeOne({super.key});

  @override
  State<HomeOne> createState() => _HomeOneState();
}

final ButtonStyle buttonForm = ElevatedButton.styleFrom(
  minimumSize: Size(double.infinity, 52),
  backgroundColor: Color.fromRGBO(131, 73, 253, 1),
  foregroundColor: Colors.white,
  textStyle: TextStyle(fontSize: 16),
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(8)),
  ),
);

class _HomeOneState extends State<HomeOne> {
  PageController pageController = PageController(initialPage: 0);
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    final List<Widget> pages = [
      ScreenContent(
        AssetsImages.homeImageOne,
        "Fast sell your property in just one click",
        "Unlock the potential of effortless selling or renting your properties with a simple steps.",
      ),

      ScreenContent(
        AssetsImages.homeImageTwo,
        "Discover the best houses at a reasonable cost.",
        "We offer the perfect dream home that is within reach without compromising on quality or comfort.",
      ),
    ];

    return Stack(
      children: [
        PageView(
          controller: pageController,
          onPageChanged: (x) {
            setState(() {
              currentPage = x;
            });
          },
          children: pages,
        ),
        Container(
          margin: EdgeInsets.only(bottom: 70, left: 8, right: 8),
          alignment: Alignment.bottomCenter,
          child: ElevatedButton(
            onPressed: () {
              pageController.animateToPage(
                1,
                duration: Duration(milliseconds: 300),
                curve: Curves.bounceInOut,
              );
            },
            style: buttonForm,
            child: Text(currentPage != pages.length - 1 ? "Next" : "SignUp"),
          ),
        ),
      ],
    );
  }
}
