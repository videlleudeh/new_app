import 'package:flutter/material.dart';

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
  int pageView = 0;

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageController,
      onPageChanged: (x) {
        setState(() {
          pageView = x;
        });

        // ignore: avoid_print
        print(pageView);
      },
      children: [
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/homescreen_one.png'),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                Color.fromRGBO(123, 97, 255, 0.2),
                BlendMode.color,
              ),
            ),
          ),

          child: Container(
            margin: EdgeInsets.only(left: 8, top: 499, right: 8, bottom: 0),
            padding: EdgeInsets.all(8),
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Fast sell your property in just one click",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                SizedBox(height: 10),

                Text(
                  "Unlock the potential of effortless selling or renting your properties with a simple steps.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    color: Color.fromRGBO(210, 210, 210, 1),
                    fontWeight: FontWeight.w400,
                  ),
                ),

                SizedBox(height: 25),

                ElevatedButton(
                  onPressed: () {
                    pageController.animateToPage(
                      1,
                      duration: Duration(milliseconds: 300),
                      curve: Curves.bounceInOut,
                    );
                  },
                  style: buttonForm,
                  child: Text("Next"),
                ),
              ],
            ),
          ),
        ),

        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/homescreen_two.png'),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                Color.fromRGBO(123, 97, 255, 0.2),
                BlendMode.color,
              ),
            ),
          ),

          child: Container(
            margin: EdgeInsets.only(left: 8, top: 499, right: 8, bottom: 0),
            padding: EdgeInsets.all(8),
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Discover the best houses at a reasonable cost.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                SizedBox(height: 10),

                Text(
                  "We offer the perfect dream home that is within reach without compromising on quality or comfort.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    color: Color.fromRGBO(210, 210, 210, 1),
                    fontWeight: FontWeight.w400,
                  ),
                ),

                SizedBox(height: 25),

                ElevatedButton(
                  onPressed: () {},
                  style: buttonForm,
                  child: Text("Sign Up"),
                ),

                SizedBox(height: 20),

                Row(
                  children: [
                    Text(
                      "Already have an account?",
                      style: TextStyle(
                        fontSize: 16,
                        color: Color.fromRGBO(210, 210, 210, 1),
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    TextButton(onPressed: () {}, child: Text("Sign In")),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
