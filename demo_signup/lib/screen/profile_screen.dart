import 'package:demo_signup/screen/notification_screen.dart';
import 'package:flutter/material.dart';

import '../model/profile_model.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
        title: const Center(child: Text("")),
        actions: const <Widget>[
          Icon(
            Icons.menu,
          )
        ],
      ),
      drawer: Drawer(
        backgroundColor: Color(525464),
        child: Column(
          children: <Widget>[
            const SizedBox(
              height: 100,
            ),
            InkWell(
              // onTap:(){
              //     Navigator.push(context,MaterialPageRoute(builder: (context) => const SigninPage()),
              //               );
              //   },
              child: Container(
                width: 82,
                height: 82,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle, color: Color(0xFF20C3AF)),
                child: const Center(
                  child: Image(image: AssetImage("assets/images/shape.png")),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
                child: Text(
              "Home",
              style: TextStyle(color: Colors.white),
            )),
            const SizedBox(
              height: 50,
            ),
            InkWell(
              // onTap:(){
              //     Navigator.push(context,MaterialPageRoute(builder: (context) => const SigninPage()),
              //               );
              //   },
              child: Container(
                width: 82,
                height: 82,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle, color: Color(0xFF525464)),
                child: const Center(
                  child: Image(image: AssetImage("assets/images/path.png")),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
                child: Text(
              "Profile",
              style: TextStyle(color: Colors.white),
            )),
            const SizedBox(
              height: 50,
            ),
            InkWell(
              // onTap:(){
              //     Navigator.push(context,MaterialPageRoute(builder: (context) => const SigninPage()),
              //               );
              //   },
              child: Container(
                width: 82,
                height: 82,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle, color: Color(0xFF323440)),
                child: const Center(
                  child: Image(image: AssetImage("assets/images/setting.png")),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
                child: Text(
              "Settings",
              style: TextStyle(color: Colors.white),
            )),
            const SizedBox(
              height: 50,
            ),
            InkWell(
              // onTap:(){
              //     Navigator.push(context,MaterialPageRoute(builder: (context) => const SigninPage()),
              //               );
              //   },
              child: Container(
                width: 82,
                height: 82,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle, color: Color(0xFF323440)),
                child: const Center(
                  child: Image(image: AssetImage("assets/images/messages.png")),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Messages",
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 3,
            child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                Container(
                  child: const Center(
                    child: CircleAvatar(
                      radius: 60,
                      backgroundImage: AssetImage(
                        'assets/images/profile.png',
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  child: const Text(
                    "Jeremías del Pozo ",
                    style: TextStyle(
                      fontSize: 24,
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 100.0),
                  child: Row(
                    children: const <Widget>[
                      Expanded(
                        child: Text(
                          'New York',
                          style: TextStyle(
                              fontSize: 16,
                              color: Color.fromARGB(255, 82, 82, 82)),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          'ID: 1120611',
                          style: TextStyle(
                              fontSize: 16,
                              color: Color.fromARGB(255, 82, 82, 82)),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                Container(
                  child: const Text(
                    "Edit ",
                    style: TextStyle(
                        fontSize: 16,
                        color: Color.fromARGB(255, 218, 114, 114)),
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 40),
                  child: Row(
                    children: [
                      Expanded(
                        child: InkWell(
                          //   onTap:(){
                          // Navigator.push(context,MaterialPageRoute(builder: (context) => const SplashScreen()),
                          //           );
                          //     },
                          child: Container(
                            height: 60,
                            margin: const EdgeInsets.symmetric(horizontal: 1),
                            color: const Color(0xFFE2E2E0),
                            child: const Center(
                              child: Text(
                                "About Me",
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
                                      const NotificationScreen()),
                            );
                          },
                          child: Container(
                            height: 60,
                            margin: const EdgeInsets.symmetric(horizontal: 1),
                            color: const Color(0xFF20C3AF),
                            child: const Center(
                              child: Text(
                                "Reviews",
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
                      const SizedBox(
                        width: 16.0,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: ListView.builder(
              itemCount: profiles.length,
              itemBuilder: (_, int index) {
                return Container(
                  color: Color(0xff525464),
                  child: Row(
                    children: [
                      const SizedBox(
                        width: 30.0,
                      ),
                      Container(
                        height: 60,
                        width: 60,
                        color: const Color(0xff525464),
                        child: Center(
                          child: Image.asset(profiles[index].icon),
                        ),
                      ),
                      const SizedBox(
                        width: 16.0,
                      ),
                      Align(
                        alignment: Alignment.topCenter,
                        child: Container(
                          width: 20,
                          child: const VerticalDivider(
                            thickness: 1,
                            indent: 40,
                            endIndent: 40,
                            width: 40,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(vertical: 40),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              alignment: Alignment.centerLeft,
                              child:
                                  Expanded(child: Text(profiles[index].name)),
                            ),
                            Expanded(child: Text(profiles[index].comment)),
                          ],
                        ),
                      ),
                    ],
                  ),
                  height: 120,
                );
              },
            ),
          ),
          const SizedBox(
            width: 16.0,
          ),
        ],
      ),
    );
  }

  List<Profile> profiles = [
    Profile(
        name: 'Phone number',
        icon: 'assets/images/phonee.png',
        comment: '+3746589923'),
    Profile(
        name: 'Email',
        icon: 'assets/images/icon3.png',
        comment: 'conrad@gmail.com'),
    Profile(
        name: 'Completed projects',
        icon: 'assets/images/icon3.png',
        comment: '248'),
    // Profile(name: 'Courier services', icon: 'assets/images/icon3.png'),
    // Profile(name: 'Interior design', icon: 'assets/images/icon3.png'),
  ];
}

Widget item({required String name}) {
  return Text('$name');
}

Widget icon({required String icon}) {
  return Text('$icon');
}

Widget comment({required String comment}) {
  return Text('$comment');
}
