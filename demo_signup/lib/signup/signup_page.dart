// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:demo_signup/signin/signin_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          elevation: 0,
          title: Center(child: Text("Sign Up")),
          leading: Icon(
            Icons.arrow_back_ios_new_rounded,
          ),
          actions: [
            Icon(
              Icons.menu,
            )
          ],
        ),
        body: GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
            new TextEditingController().clear(); //remove
          },
          child: Column(
            children: [
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
                    autofocus: false,
                    decoration: InputDecoration(
                      hintText: 'Enter email',
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
                      hintText: 'Enter password',
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
                margin: EdgeInsets.only(
                  left: 30.0,
                  right: 30.0,
                  top: 0.0,
                  bottom: 16.0,
                ),
                color: Color(0xffF7F7F7),
                height: 60,
                padding: EdgeInsets.symmetric(horizontal: 22.0),
                child: Center(
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: 'Confirm password',
                      border: InputBorder.none,
                      suffixIcon: Icon(Icons.remove_red_eye),
                    ),
                  ),
                ),
              ),
              InkWell(
                child: Container(
                  height: 60,
                  margin: EdgeInsets.symmetric(horizontal: 30),
                  color: Color(0xFF20C3AF),
                  child: Center(
                    child: Text(
                      "Sign Up",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 16.0,
                      ),
                    ),
                  ),
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
                          child: Center(
                              child: SvgPicture.asset('assets/svgs/fb.svg')),
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
                              child: SvgPicture.asset('assets/svgs/path.svg')),
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
                      child: Text("Already have an account? Sign In"),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SigninPage()),
                        );
                      }),
                ],
              ),
              SizedBox(
                height: 40,
              ),
            ],
          ),
        ));
  }
}
