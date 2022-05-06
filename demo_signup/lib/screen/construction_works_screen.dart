import 'package:demo_signup/screen/categories_screen.dart';
import 'package:demo_signup/screen/payment_screen.dart';
import 'package:flutter/material.dart';

import '../splash/splash_screen.dart';

class ConstructionWorkScreen extends StatefulWidget {
  const ConstructionWorkScreen({Key? key}) : super(key: key);

  @override
  State<ConstructionWorkScreen> createState() => _ConstructionWorkScreenState();
}

class _ConstructionWorkScreenState extends State<ConstructionWorkScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0.0,
        title: const Center(child: Text("Construction workss")),
        leading: const Icon(
          Icons.arrow_back_ios_new_rounded,
        ),
        actions: const <Widget>[
          Icon(
            Icons.short_text,
          )
        ],
      ),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 30),
            color: const Color(0xFFF7F7F7),
            height: 60,
            child: const Center(
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search by category',
                  border: InputBorder.none,
                  icon: Icon(Icons.search),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 42.0,
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 30),
            child: Row(
              children: [
                Container(
                  // margin: const EdgeInsets.symmetric(horizontal: 30),
                  color: const Color(0xFFF2F2F2),
                  height: 60,
                  width: 270,
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.symmetric(horizontal: 22.0),
                  child: const Text("Welding works"),
                  
                ),
                Container(
                  child: InkWell(
                    child: Container(
                      height: 60,
                      width: 60,
                      color: Color.fromARGB(255, 250, 168, 188),
                      // decoration: BoxDecoration(
                      //   border: Border.all(
                      //     width: 25,

                      //     color: Color.fromARGB(255, 81, 211, 42),

                      //   ),
                      // ),
                      child: new Icon(Icons.check),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 16.0,
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 30),
            child: Row(
              children: [
                Container(
                  child: InkWell(
                    child: Container(
                      color: const Color(0xFFF2F2F2),
                      height: 60,
                      width: 270,
                      alignment: Alignment.centerLeft,
                      padding: const EdgeInsets.symmetric(horizontal: 22.0),
                      child: const Text("Foundation works"),
                    ),
                  ),
                ),
                Container(
                  child: InkWell(
                    child: Container(
                      height: 60,
                      width: 60,
                      color: Color.fromARGB(255, 250, 168, 188),
                      child: new Icon(Icons.check),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 16.0,
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 30),
            child: Row(
              children: [
                Container(
                  // margin: const EdgeInsets.symmetric(horizontal: 30),
                  color: const Color(0xFFF2F2F2),
                  height: 60,
                  width: 270,
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.symmetric(horizontal: 22.0),
                  child: const Text("Roofing"),
                ),
                Container(
                  child: InkWell(
                    child: Container(
                      height: 60,
                      width: 60,
                      color: Color(0xFFF7F7F7),
                      child: new Icon(Icons.add),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 16.0,
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 30),
            child: Row(
              children: [
                Container(
                  // margin: const EdgeInsets.symmetric(horizontal: 30),
                  color: const Color(0xFFF2F2F2),
                  height: 60,
                  width: 270,
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.symmetric(horizontal: 22.0),
                  child: const Text("Waterproofing"),
                ),
                Container(
                  child: InkWell(
                    child: Container(
                      height: 60,
                      width: 60,
                      color: Color.fromARGB(255, 250, 168, 188),
                      child: new Icon(Icons.check),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 16.0,
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 30),
            child: Row(
              children: [
                Container(
                  // margin: const EdgeInsets.symmetric(horizontal: 30),
                  color: const Color(0xFFF2F2F2),
                  height: 60,
                  width: 270,
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.symmetric(horizontal: 22.0),
                  child: const Text("Architecture"),
                ),
                Container(
                  child: InkWell(
                    child: Container(
                      height: 60,
                      width: 60,
                      color: Color(0xFFF7F7F7),
                      // decoration: BoxDecoration(
                      //   border: Border.all(
                      //     width: 25,

                      //     color: Color.fromARGB(255, 81, 211, 42),

                      //   ),
                      // ),
                      child: new Icon(Icons.add),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 16.0,
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 30),
            child: Row(
              children: [
                Container(
                  // margin: const EdgeInsets.symmetric(horizontal: 30),
                  color: const Color(0xFFF2F2F2),
                  height: 60,
                  width: 270,
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.symmetric(horizontal: 22.0),
                  child: const Text("Design"),
                ),
                Container(
                  child: InkWell(
                    child: Container(
                      height: 60,
                      width: 60,
                      color: Color(0xFFF7F7F7),
                      // decoration: BoxDecoration(
                      //   border: Border.all(
                      //     width: 25,

                      //     color: Color.fromARGB(255, 81, 211, 42),

                      //   ),
                      // ),
                      child: new Icon(Icons.add),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 16.0,
          ),
          const Expanded(child: SizedBox()),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 30),
            child: Row(
              children: [
                Expanded(
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SplashScreen()),
                      );
                    },
                    child: Container(
                      height: 60,
                      margin: const EdgeInsets.symmetric(horizontal: 1),
                      color: const Color(0xFFE2E2E0),
                      child: const Center(
                        child: Text(
                          "Skip",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                            fontSize: 16.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 16.0,
                ),
                Expanded(
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const PaymentScreen()),
                      );
                    },
                    child: Container(
                      height: 60,
                      margin: const EdgeInsets.symmetric(horizontal: 1),
                      color: const Color(0xFF20C3AF),
                      child: const Center(
                        child: Text(
                          "Done",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 16.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 40,
          ),
        ],
      ),
    );
  }
}
