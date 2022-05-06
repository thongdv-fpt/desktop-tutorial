import 'package:flutter/material.dart';

import '../signin/signin_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        // foregroundColor: Colors.black,
        elevation: 0,
        title: Text("Signup"),
        leading: Icon(
          Icons.arrow_back_ios_new_rounded,
        ),
        actions: [
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
          "Create",
          style: TextStyle(fontSize: 30),
        ),

       const Text(
         "order ",
         style: TextStyle(fontSize: 30),
       ),
        Center(
          child: Expanded(
            flex: 2,
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
          "We insure each order for the amount of 500 ",
          style: TextStyle(
            fontSize: 16,
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
                  margin:const EdgeInsets.symmetric(horizontal: 50),
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
                          ),
                        ),
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
              MaterialPageRoute(builder: (context) => const SigninPage()),
            );
          },
          child: Container(
            width: 82,
            height: 82,
            decoration: const BoxDecoration(
                shape: BoxShape.circle, color: Color(0xFF20C3AF)),
            child: const Center(
              child: Text(
                "+",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 30.0,
                ),
              ),
            ),
          ),
        ),
        
        
      ]),
    );
  }
}
