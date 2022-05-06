import 'package:demo_signup/splash/splash_screen.dart';
import 'package:flutter/material.dart';


class SplashScreenThree extends StatefulWidget {
  const SplashScreenThree({Key? key}) : super(key: key);

  @override
  State<SplashScreenThree> createState() => _SplashScreenThreeState();
}

class _SplashScreenThreeState extends State<SplashScreenThree> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        // foregroundColor: Colors.black,
        elevation: 0,
        title: const Text("Signup"),
        leading: const Icon(
          Icons.arrow_back_ios_new_rounded,
        ),
        actions: const [
          Icon(
            Icons.menu,
          )
        ],
      ),
      body: Column(children: <Widget>[
        SizedBox(
          height: 8.0,
        ),
        Container(
          // margin: EdgeInsets.symmetric(vertical: 20),
          child: Text(
            "Insured ",
            style: TextStyle(fontSize: 40),
          ),
        ),

        Container(
          child: Text(
            " orders ",
            style: TextStyle(fontSize: 40),
          ),
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

        Container(
          child: Text(
            "We check each specialist before he starts work ",
            style: TextStyle(
              fontSize: 16,
            ),
          ),
        ),
        const SizedBox(
          height: 47,
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
                            margin: EdgeInsets.only(right: 5),
                            height: 8.0,
                            width: 8.0,
                            decoration: BoxDecoration(
                              color: Color(0xffCBD3D5),
                              borderRadius: BorderRadius.circular(3),
                            )),
                        Container(
                            margin: EdgeInsets.only(right: 5),
                            height: 8.0,
                            width: 8.0,
                            decoration: BoxDecoration(
                              color: Color(0xffCBD3D5),
                              borderRadius: BorderRadius.circular(3),
                            )),
                        Container(
                            margin: EdgeInsets.only(right: 5),
                            height: 8.0,
                            width: 16.0,
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 77, 77, 80),
                              borderRadius: BorderRadius.circular(3),
                            )),
                        Container(
                            margin: EdgeInsets.only(right: 5),
                            height: 8.0,
                            width: 8.0,
                            decoration: BoxDecoration(
                              color: Color(0xffCBD3D5),
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
              MaterialPageRoute(builder: (context) => const SplashScreen()),
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
