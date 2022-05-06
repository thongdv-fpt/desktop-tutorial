import 'package:demo_signup/screen/construction_works_screen.dart';
import 'package:demo_signup/screen/profile_screen.dart';
import 'package:flutter/material.dart';

import '../splash/splash_screen.dart';
import 'notification_screen.dart';

class OrderSreen extends StatefulWidget {
  const OrderSreen({Key? key}) : super(key: key);

  @override
  State<OrderSreen> createState() => _OrderSreenState();
}

class _OrderSreenState extends State<OrderSreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0.0,
        title: const Center(child: Text("Orders in progress")),
        leading: const Icon(
          Icons.arrow_back_ios_new_rounded,
        ),
        actions: const <Widget>[
          Icon(
            Icons.menu,
          )
        ],
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 50.0,
          ),
          Expanded(
            flex: 7,
            child: Center(
              child: GridView.count(
                crossAxisCount: 2,
                controller: ScrollController(keepScrollOffset: false),
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                children: <Widget>[
                  Column(children: <Widget>[
                    Image.asset(
                      'assets/images/orderrss.png',
                      height: 150.0,
                    ),
                    const SizedBox(
                      height: 5.0,
                    ),
                    const Text(
                      "Balcony repair",
                      style: TextStyle(fontSize: 16.0),
                    ),
                    const SizedBox(
                      height: 5.0,
                    ),
                    const Text(
                      " \$24",
                      style:
                          TextStyle(color: Color.fromARGB(255, 139, 139, 139)),
                    ),
                  ]),
                  Column(children: <Widget>[
                    Image.asset(
                      'assets/images/lisa.png',
                      height: 122.0,
                    ),
                    const SizedBox(
                      height: 5.0,
                    ),
                    const Text(
                      "Balcony repair",
                      style: TextStyle(fontSize: 16.0),
                    ),
                    const SizedBox(
                      height: 5.0,
                    ),
                    const Text(
                      " \$24",
                      style: TextStyle(
                          color: Color.fromARGB(255, 139, 139, 139),
                          fontSize: 14),
                    ),
                  ]),
                  Column(children: <Widget>[
                    Image.asset(
                      'assets/images/pixabay.png',
                      height: 120.0,
                    ),
                    const SizedBox(
                      height: 5.0,
                    ),
                    const Text(
                      "Painting works",
                      style: TextStyle(fontSize: 16.0),
                    ),
                    const SizedBox(
                      height: 5.0,
                    ),
                    const Text(
                      " \$24",
                      style:
                          TextStyle(color: Color.fromARGB(255, 139, 139, 139)),
                    ),
                  ]),
                  Column(children: <Widget>[
                    Image.asset(
                      'assets/images/medhat.png',
                      height: 150.0,
                    ),
                    const SizedBox(
                      height: 5.0,
                    ),
                    const Text(
                      "Interior design",
                      style: TextStyle(fontSize: 16.0),
                    ),
                    const SizedBox(
                      height: 5.0,
                    ),
                    const Text(
                      " \$24",
                      style:
                          TextStyle(color: Color.fromARGB(255, 139, 139, 139)),
                    ),
                  ]),
                  Column(children: <Widget>[
                    Image.asset(
                      'assets/images/orderrss.png',
                      height: 150.0,
                    ),
                    const SizedBox(
                      height: 5.0,
                    ),
                    const Text(
                      "Balcony repair",
                      style: TextStyle(fontSize: 16.0),
                    ),
                    const SizedBox(
                      height: 5.0,
                    ),
                    const Text(
                      "\$24",
                      style:
                          TextStyle(color: Color.fromARGB(255, 139, 139, 139)),
                    ),
                  ]),
                  Column(children: <Widget>[
                    Image.asset(
                      'assets/images/orderrss.png',
                      height: 150.0,
                    ),
                    const SizedBox(
                      height: 5.0,
                    ),
                    const Text("Balcony repair",
                        style: TextStyle(fontSize: 16.0)),
                    const SizedBox(
                      height: 5.0,
                    ),
                    const Text(
                      " \$24",
                      style:
                          TextStyle(color: Color.fromARGB(255, 139, 139, 139)),
                    ),
                  ]),
                ],
              ),
            ),
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
                          "Archive",
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
                            builder: (context) =>
                                const ConstructionWorkScreen()),
                      );
                    },
                    child: Container(
                      height: 60,
                      margin: const EdgeInsets.symmetric(horizontal: 1),
                      color: const Color(0xFF20C3AF),
                      child: const Center(
                        child: Text(
                          "In work",
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
