import 'package:demo_signup/splash/splash_screen.dart';
import 'package:demo_signup/splash/splash_screen_second.dart';
import 'package:flutter/material.dart';

import '../signin/signin_page.dart';

class SplashScreenFirt extends StatefulWidget {
  const SplashScreenFirt({Key? key}) : super(key: key);

  @override
  State<SplashScreenFirt> createState() => _SplashScreenFirtState();
}

class _SplashScreenFirtState extends State<SplashScreenFirt> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        // foregroundColor: Colors.black,
        elevation: 0,
        title: const Text("Signup"),
        leading:const  Icon(
          Icons.arrow_back_ios_new_rounded,
        ),
        actions:const <Widget> [
          Icon(
            Icons.menu,
          )
        ],
      ),
      body: Column(children: <Widget>[
        const SizedBox(
          height: 8.0,
        ),
        const Text(
          "Proven ",
          style: TextStyle(fontSize: 40),
        ),

        const Text(
          "specialists ",
          style: TextStyle(fontSize: 40),
        ),
        Center(
          child: Expanded(
            flex: 3,
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 48),
              child: const Image(
                image: AssetImage(
                  'assets/images/icon3.png',
                ),
              ),
            ),
          ),
        ),

        const Text(
          "We check each specialist before he starts work ",
          style: TextStyle(
            fontSize: 16,
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        // margin: EdgeInsets.symmetric(horizontal: 10),
        Center(
          child: SizedBox(
            height: 30.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 50),
                  child: Center(
                    child: Row(
                      children: <Widget>[
                        Container(
                            margin: const EdgeInsets.only(right: 5),
                            height: 8.0,
                            width: 16.0,
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 77, 77, 80),
                              borderRadius: BorderRadius.circular(3),
                            )),
                        Container(
                            margin:const EdgeInsets.only(right: 5),
                            height: 8.0,
                            width: 8.0,
                            decoration: BoxDecoration(
                              color: const Color(0xffCBD3D5),
                              borderRadius: BorderRadius.circular(3),
                            )),
                        Container(
                            margin: const  EdgeInsets.only(right: 5),
                            height: 8.0,
                            width: 8.0,
                            decoration: BoxDecoration(
                              color: const Color(0xffCBD3D5),
                              borderRadius: BorderRadius.circular(3),
                            )),
                        Container(
                            margin: const EdgeInsets.only(right: 5),
                            height: 8.0,
                            width: 8.0,
                            decoration: BoxDecoration(
                              color: const Color(0xffCBD3D5),
                              borderRadius: BorderRadius.circular(3),
                            )),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),

        const Expanded(child: SizedBox()),
        InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const SplashScreenSecond()),
            );
          },
          child: Container(
            height: 60,
            margin: const EdgeInsets.symmetric(horizontal: 30),
            color: const Color(0xFF20C3AF),
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
        
      ]),
    );
  }
}
