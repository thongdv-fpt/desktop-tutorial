// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

// import 'package:demo_signup/onboarding/onboarding_screen.dart';
import 'package:demo_signup/screen/categories_screen.dart';
import 'package:demo_signup/signup/signup_page.dart';
import 'package:demo_signup/widget/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SigninPage extends StatefulWidget {
  const SigninPage({Key? key}) : super(key: key);

  @override
  State<SigninPage> createState() => _SigninPageState();
}

class _SigninPageState extends State<SigninPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
        title: Center(child: Text("Sign In")),
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.arrow_back_ios_new_rounded),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SignupPage()),
                );
              },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
        ),
        // leading: Icon( Icons.arrow_back_ios_new_rounded,
        // ),
        actions: [
          Icon(
            Icons.menu,
          )
        ],
      ),
      body: Column(children: [
        Container(
          margin: EdgeInsets.symmetric(vertical: 48),
          child: Image(
            image: AssetImage(
              'assets/images/signup_icon.png',
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 30),
          color: Color(0xffF7F7F7),
          height: 60,
          padding: EdgeInsets.symmetric(horizontal: 22.0),
          child: Center(
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Username',
                border: InputBorder.none,
              ),
            ),
          ),
        ),
        SizedBox(
          height: 16.0,
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 30),
          color: Color(0xffF7F7F7),
          height: 60,
          padding: EdgeInsets.symmetric(horizontal: 22.0),
          child: Center(
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: 'Password',
                border: InputBorder.none,
                suffixIcon: Icon(Icons.remove_red_eye),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 16.0,
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 30),
          alignment: Alignment.bottomRight,
          child: Text(
            "Forgot your password?",
          ),
        ),
        SizedBox(
          height: 86.0,
        ),
        Container(
          width: 315,
          child: CustomButton(
            title: "Login",
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const CategoriesScreen()),
              );
            },
          ),
        ),
        SizedBox(
          height: 30,
          child: Center(
            child: Text(
              "or",
              style: TextStyle(
                color: Color(0xff838391),
                fontWeight: FontWeight.w500,
                fontSize: 16.0,
              ),
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 30),
          child: Row(
            children: [
              Expanded(
                child: InkWell(
                  child: Container(
                    height: 60,
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 1.0,
                        color: Color(
                          0xffE2E2E0,
                        ),
                      ),
                    ),
                    child:
                        Center(child: SvgPicture.asset('assets/svgs/fb.svg')),
                  ),
                ),
              ),
              SizedBox(
                width: 8.0,
              ),
              Expanded(
                child: InkWell(
                  child: Container(
                    height: 60,
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 1.0,
                        color: Color(
                          0xffE2E2E0,
                        ),
                      ),
                    ),
                    child:
                        Center(child: SvgPicture.asset('assets/svgs/path.svg')),
                  ),
                ),
              ),
              SizedBox(
                width: 8.0,
              ),
              Expanded(
                child: InkWell(
                  child: Container(
                    height: 60,
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 1.0,
                        color: Color(
                          0xffE2E2E0,
                        ),
                      ),
                    ),
                    child: Center(
                        child: SvgPicture.asset('assets/svgs/shape.svg')),
                  ),
                ),
              ),
            ],
          ),
        ),
        Expanded(child: SizedBox()),
        Column(
          children: [
            GestureDetector(
                child: Text("Don’t have an account?" "Sign Up"),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const SignupPage()),
                  );
                }),
          ],
        ),
        SizedBox(
          height: 30,
        ),
      ]),
      //     Text("Don’t have an account?" "Sign Up"),
      //     SizedBox(
      //       height: 40,
      //     )
      //   ],
      // ),
    );
  }
}
