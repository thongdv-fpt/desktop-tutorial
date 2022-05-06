import 'dart:async';
import 'package:demo_signup/signin/signin_page.dart';
import 'package:demo_signup/signup/signup_page.dart';
import 'package:demo_signup/splash/splash_screen.dart';
import 'package:flutter/material.dart';

import '../model/onboarding.dart';
import 'components/widget_text.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  List<OnBoarding> onBoarding = [
    OnBoarding(
        image: 'assets/images/src1.png',
        name: 'Proven specialists',
        radix: 18,
        document: 'We check each specialist before he starts work'),
    OnBoarding(
      image: 'assets/images/src2.png',
      name: 'Honest ratings',
      radix: 19,
      document: 'We carefully check each specialist and put honest ratings',
    ),
    OnBoarding(
      image: 'assets/images/src3.png',
      name: 'Insured orders',
      radix: 18,
      document: 'We insure each order for the amount of \$500',
    ),
    // OnBoarding(
    //   image: 'assets/images/src4.png',
    //   name: 'Insured orders',
    //   radix: 18,
    //   document: 'We check each specialist before he starts work',
    // ),
  ];
  var curentPage = 0;
  var pageviewController = PageController(
    initialPage: 0,
  );

  @override
  // ignore: must_call_super
  void initState() {
    super.initState();
    autoNextPage();
  }

  autoNextPage() {
    Timer.periodic(const Duration(seconds: 8), (timer) {
      if (curentPage < onBoarding.length - 1) {
        setState(() {
          curentPage = curentPage + 1;
          if (curentPage == onBoarding.length - 1) {
            Future.delayed(const Duration(seconds: 3), () {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(builder: (context) => SigninPage()),
              // );
            });
          }
        });
      }
      pageviewController.animateToPage(curentPage,
          duration: const Duration(milliseconds: 100), curve: Curves.easeIn);
      // }
    });
  }

  onPageChange(int index) {
    setState(() {
      curentPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 5,
            child: Center(
              child: PageView.builder(
                onPageChanged: (index) => onPageChange(index),
                controller: pageviewController,
                scrollDirection: Axis.horizontal,
                itemCount: onBoarding.length,
                itemBuilder: (_, index) {
                  return Column(
                    children: [
                      const SizedBox(
                        height: 40.0,
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(vertical: 50),
                        child: Text(
                          onBoarding[index].name,
                          // textAlign: TextAlign.start,
                          style: const TextStyle(
                              fontSize: 40,
                              fontFamily: 'Ubuntu',
                              fontStyle: FontStyle.normal),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(vertical: 40),
                        child: Image.asset(
                          onBoarding[index].image,
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(vertical: 40),
                        child: Text(
                          onBoarding[index].document,
                          style: const TextStyle(
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Column(
              children: [
                const SizedBox(
                  height: 10,
                ),
                Container(
                  height: 12,
                  width: 4,
                  decoration: const BoxDecoration(
                      color: Color(0xffB5C3C7),
                      borderRadius: BorderRadius.all(Radius.circular(12))),
                ),
                const SizedBox(
                  height: 30,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SplashScreen()),
                    );
                  },
                  child: Container(
                    height: 60,
                    margin: EdgeInsets.symmetric(horizontal: 30),
                    color: Color(0xFF20C3AF),
                    child: const Center(
                      child: Text(
                        "Next",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 16.0,
                        ),
                      ),
                    ),
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
