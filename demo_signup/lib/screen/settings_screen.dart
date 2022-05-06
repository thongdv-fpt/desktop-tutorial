import 'package:demo_signup/screen/payment_cards_screen.dart';
import 'package:flutter/material.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0.0,
        title: const Center(child: Text("Settings")),
        leading: const Icon(
          Icons.arrow_back_ios_new_rounded,
        ),
        actions: const <Widget>[
          Icon(
            Icons.menu,
          )
        ],
      ),
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        const SizedBox(
          height: 52.0,
        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 30),
          color: const Color(0xFFF2F2F2),
          height: 80,
          width: 315,
          alignment: Alignment.centerLeft,
          padding: const EdgeInsets.symmetric(horizontal: 22.0),
          child: Row(
            children: [
              const Text(
                "Payment cards",
                style: TextStyle(fontSize: 16.0),
              ),
              const Expanded(child: SizedBox()),
              Container(child: Icon(Icons.chevron_right)),
              const SizedBox(
                width: 1.0,
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 16.0,
        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 30),
          color: const Color(0xFFF2F2F2),
          height: 80,
          width: 315,
          alignment: Alignment.centerLeft,
          padding: const EdgeInsets.symmetric(horizontal: 22.0),
          child: Row(
            children: [
              const Text(
                "Write to us",
                style: TextStyle(fontSize: 16.0),
              ),
              const Expanded(child: SizedBox()),
              Container(child: Icon(Icons.chevron_right)),
              const SizedBox(
                width: 1.0,
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 16.0,
        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 30),
          color: const Color(0xFFF2F2F2),
          height: 80,
          width: 315,
          alignment: Alignment.centerLeft,
          padding: const EdgeInsets.symmetric(horizontal: 22.0),
          child: Row(
            children: [
              const Text(
                "Rate us on app store",
                style: TextStyle(fontSize: 16.0),
              ),
              const Expanded(child: SizedBox()),
              Container(child: Icon(Icons.chevron_right)),
              const SizedBox(
                width: 1.0,
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 16.0,
        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 30),
          color: const Color(0xFFF2F2F2),
          height: 80,
          width: 315,
          alignment: Alignment.centerLeft,
          padding: const EdgeInsets.symmetric(horizontal: 22.0),
          child: Row(
            children: [
              const Text(
                "About Us",
                style: TextStyle(fontSize: 16.0),
              ),
              const Expanded(child: SizedBox()),
              Container(child: Icon(Icons.chevron_right)),
              const SizedBox(
                width: 1.0,
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 30.0,
        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 30),
          child: GestureDetector(
            child: const Text(
              'Log Out',
              style: TextStyle(
                decoration: TextDecoration.underline,
                fontSize: 16.0,
                color: Color(0xffFFB19D),
              ),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const PaymentCardScreen()),
              );
            },
          ),
        ),
      ]),
    );
  }
}
