import 'package:demo_signup/onboarding/onboarding_screen.dart';
import 'package:demo_signup/signin/signin_page.dart';
import 'package:demo_signup/signup/signup_page.dart';
import 'package:demo_signup/splash/splash_screen.dart';
import 'package:demo_signup/splash/splash_screen_firt.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const OnboardingScreen(),
    );
  }
}
