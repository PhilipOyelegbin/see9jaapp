import 'package:flutter/material.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:see_9ja_/screens/views/login.dart';
import 'package:see_9ja_/styles/colors.dart';
import 'package:see_9ja_/utils/router.dart';
import 'package:see_9ja_/screens/views/pageView.dart';

class Intro extends StatefulWidget {
  const Intro({Key? key}) : super(key: key);
  //
  static String id = "Intro_screen";

  @override
  State<Intro> createState() => _IntroState();
}

class _IntroState extends State<Intro> {
  //
  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }
  //

  final PageController _pageController = PageController(initialPage: 0);
  int currentIndex = 0;

  //
  bool isLast = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          GestureDetector(
            onTap: () {
              _pageController.animateToPage(
                2,
                duration: const Duration(milliseconds: 200),
                curve: Curves.linear,
              );
              _pageController.jumpToPage(currentIndex = 3);
              print('Skip');
            },
            child: Padding(
              padding: const EdgeInsets.only(top: 10.0, right: 20.0),
              child: Container(
                height: 6.0,
                width: 80.0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      "Skip",
                      style: TextStyle(fontSize: 16.0, color: Colors.white),
                      // ),
                    ),
                    Icon(Icons.arrow_forward_ios, size: 12.0),
                  ],
                ),
                decoration: BoxDecoration(
                  color: lightGreen,
                  borderRadius: BorderRadius.circular(30.0),
                ),
              ),
            ),
          ), //
        ],
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      backgroundColor: const Color(0XFFFCFAFF),
      body: Stack(
        children: [
          const Scaffold(
            backgroundColor: Colors.transparent,
          ),
          PageView(
            controller: _pageController,
            onPageChanged: (page) {
              setState(() {
                currentIndex = page;
              });
            },
            children: const [
              ChildWidget(
                  number: ScreenNumber.first,
                  description: "Explore Nigeria With Us",
                  subDescription:
                      "Check out different attraction centres in \n Nigeria and decide where you’ll like to visit"),
              ChildWidget(
                number: ScreenNumber.second,
                description: "Discover Beautiful Places",
                subDescription:
                    "Go sight-seeing and discover different \n natural and man-made attraction sites",
              ),
              ChildWidget(
                number: ScreenNumber.third,
                description: "Google Maps Coordination ",
                subDescription:
                    "Get clear and concise directions with the \n Google Maps Coordination",
              ),
              ChildWidget(
                number: ScreenNumber.fourth,
                description: "Connect With Other Tourists",
                subDescription:
                    "Join the explorers community and share your \n experience with others",
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(
                //top: 5.0,
                ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Center(
                  child: DotsIndicator(
                    decorator: DotsDecorator(
                      activeColor: lightGreen,
                    ),
                    dotsCount: 4,
                    position: currentIndex.toDouble(),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      top: 20, left: 50, right: 50, bottom: 30.0),
                  child: Column(
                    children: [
                      // GestureDetector(
                      //   onTap: () {
                      //     print('Sign up');
                      //     print('GO TO REG SCREEN');
                      //     //Navigator.pushNamed(context, RegistrationScreen.id);
                      //   },
                      //   child: Container(
                      //     height: 44.0,
                      //     child: const Center(
                      //       child: Text(
                      //         "Register",
                      //         // style: GoogleFonts.poppins(
                      //         //   textStyle: TextStyle(
                      //         //       color: Color(0XFFFCFAFF),
                      //         //       fontSize: 16.0,
                      //         //       fontWeight: FontWeight.w500),
                      //         // ),
                      //       ),
                      //     ),
                      //     decoration: const BoxDecoration(
                      //       color: Colors.teal,
                      //       borderRadius: BorderRadius.all(
                      //         Radius.circular(15.0),
                      //       ),
                      //     ),
                      //   ),
                      // ),
                      const SizedBox(height: 20.0),
                      GestureDetector(
                        onTap: () {
                          //Navigator.pushNamed(context, LoginScreen.id);
                          print(' Login');
                          PageNavigator(ctx: context).nextPage(
                            page: const LoginScreen(),
                          );
                        },
                        child: Container(
                          // color: Colors.green,
                          height: 44.0,
                          child: Center(
                            child: Text(
                              currentIndex == 3 ? "Get Started" : "Next",
                              style: TextStyle(color: white, fontSize: 18),
                            ),
                          ),
                          decoration: BoxDecoration(
                            color: Colors.green,
                            //color: status == false ? primaryColor : grey,
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
