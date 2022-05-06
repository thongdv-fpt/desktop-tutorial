import 'package:demo_signup/screen/profile_screen.dart';
import 'package:demo_signup/widget/custom_app_barr.dart';
import 'package:flutter/material.dart';

import 'orders_sreen.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      appBar:CustomAppBar(
        title: 'Notification',
        centerTitle: true,
        actionButton: Icon(
          Icons.mobile_friendly,
          color: Colors.black,
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 40.0,
          ),
          Column(
            children: <Widget>[
              Row(
                children: [
                  Container(
                    height: 45.0,
                    width: 45.0,
                    margin: EdgeInsets.symmetric(horizontal: 17),
                    decoration: BoxDecoration(
                      image: const DecorationImage(
                        image: AssetImage('assets/images/profile.png'),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(44.0),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const <Widget>[
                      Text(
                        "Joel Rowe",
                        style: TextStyle(fontSize: 22.0),
                      ),
                      Text(
                        "Bitrow Company",
                        style: TextStyle(fontSize: 18.0,color: Color(0xff616173),),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 18.0,
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 30),
                child: const Text(
                  "Sorry, all the artists in the Interior Design category are busy right now. If your task is still relevant - go to the task details page and click Extend task.",
                  style: TextStyle(fontSize: 18.0,color: Color(0xff616173),),
                ),
              ),
              const SizedBox(
                height: 16.0,
              ),
              const Divider(
                height: 5,
                thickness: 1,
                indent: 10,
                endIndent: 0,
                color: Color.fromARGB(255, 250, 249, 249),
              ),
            ],
          ),
          const SizedBox(
            height: 16.0,
          ),
          Column(
            children: <Widget>[
              Row(
                children: [
                  Container(
                    height: 45.0,
                    width: 45.0,
                    margin: const EdgeInsets.symmetric(horizontal: 17),
                    decoration: BoxDecoration(
                      image: const DecorationImage(
                        image: AssetImage('assets/images/profile.png'),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(44.0),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const <Widget>[
                      Text(
                        "Cole Payne",
                        style: TextStyle(fontSize: 22.0),
                      ),
                      Text(
                        "Corporation Kraton",
                        style: TextStyle(fontSize: 18.0,color: Color(0xff616173),),
                      ),
                      // Divider(
                      //   color: Colors.green,
                      // )
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 16.0,
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 30),
                child: const Text(
                  "We have found a contractor for your task Cleaning services. Please see the details.",
                  style: TextStyle(fontSize: 18.0,color: Color(0xff616173),),
                ),
              ),
              const SizedBox(
                height: 16.0,
              ),
              const Divider(
                height: 5,
                thickness: 1,
                indent: 10,
                endIndent: 0,
                color: Color.fromARGB(255, 250, 249, 249),
              ),
              const SizedBox(
                height: 16.0,
              ),
            ],
          ),
          Column(
            children: <Widget>[
              Row(
                children: [
                  Container(
                    height: 45.0,
                    width: 45.0,
                    margin: const EdgeInsets.symmetric(horizontal: 17),
                    // margin: const EdgeInsets.only(right: 10.0),
                    decoration: BoxDecoration(
                      image: const DecorationImage(
                        image: AssetImage('assets/images/profile.png'),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(44.0),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const <Widget>[
                      Text(
                        "Elva Stone",
                        style: TextStyle(fontSize: 22.0),
                      ),
                      Text(
                        "Grand Service Company",
                        style: TextStyle(fontSize: 18.0,color: Color(0xff616173),),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 19.0,
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 30),
                child: const Text(
                  "David Coleman is ready to complete your assignment and get started soon! View David's profile and carefully review the order details. Then confirm the order.",
                  style: TextStyle(fontSize: 20.0,color: Color(0xff616173),),
                ),
              ),
            ],
          ),
          const Expanded(child: SizedBox()),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const OrderSreen()),
              );
            },
            child: Container(
              height: 60,
              margin: const EdgeInsets.symmetric(horizontal: 30),
              color: const Color(0xFF20C3AF),
              child: const Center(
                child: Text(
                  "View all",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 16.0,
                  ),
                ),
              ),
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
