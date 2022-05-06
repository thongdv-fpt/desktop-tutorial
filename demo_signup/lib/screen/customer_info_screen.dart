import 'package:demo_signup/screen/categories_screen.dart';
import 'package:demo_signup/screen/settings_screen.dart';
import 'package:flutter/material.dart';

class CustomerScreen extends StatefulWidget {
  const CustomerScreen({Key? key}) : super(key: key);

  @override
  State<CustomerScreen> createState() => _CustomerScreenState();
}

class _CustomerScreenState extends State<CustomerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0.0,
        title: const Center(child: Text(" Сustomer info")),
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
          child: const Text(
            "Portfolio",
            style: TextStyle(fontSize: 24),
          ),
        ),
        const SizedBox(
          height: 17.0,
        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 30),
          child: const  Text(
              "The last completed works of the contractor are shown below.",
              style: TextStyle(fontSize: 14,fontWeight: FontWeight.w300,overflow: TextOverflow.clip),textScaleFactor: 1.24,)
        ),
        const SizedBox(
          height: 26.0,
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 22.0),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    height: 232,
                    width: 280,
                    child: const Image(
                      image: AssetImage(
                        'assets/images/customerr.png',
                      ),
                    ),
                    // color: Colors.green,
                  ),
                  Column(
                    children: [
                      Container(
                        height: 58,
                        width: 65,
                        child: const Image(
                          image: AssetImage(
                            'assets/images/customer.png',
                          ),
                        ),
                        // color: Color.fromARGB(255, 160, 175, 76),
                      ),
                      Container(
                        //customrr
                        height: 58,
                        width: 65,
                        child: const Image(
                          image: AssetImage(
                            'assets/images/customrr.png',
                          ),
                        ),
                        //color: Color.fromARGB(255, 160, 175, 76),
                      ),
                      Container(
                        //customm
                        height: 58,
                        width: 65,
                        child: const Image(
                          image: AssetImage(
                            'assets/images/customm.png',
                          ),
                        ),
                        // color: Color.fromARGB(255, 160, 175, 76),
                      ),
                      Container(
                        //cottonbro
                        height: 58,
                        width: 65,
                        child: const Image(
                          image: AssetImage(
                            'assets/images/cottonbro.png',
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 19.0,
        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 30),
          child: Row(
            children: const <Widget>[
              Icon(Icons.star,color: Color(0xffFFB19D),),
              Icon(Icons.star,color: Color(0xffFFB19D)),
              Icon(Icons.star,color: Color(0xffFFB19D)),
              Icon(Icons.star,color: Color(0xffFFB19D)),
              Icon(Icons.star_border,color:Color(0xffE2E2EF)),
            ],
          ),
        ),
        const SizedBox(
                  height: 57.0,
                ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 30),
          child: Text('Details', style: TextStyle(fontSize: 24), ),
        ),
         const SizedBox(
                  height: 17.0,
                ),
        
        Container(
          height: 120,
          margin: const EdgeInsets.symmetric(horizontal: 30),
          child: const Text(
              'I have been working in this position for over 10 years! I have created many design solutions and I think my main best quality is creativity. If you liked my work, please contact me and see the professionalism and quality of my services.',
              style: TextStyle(fontSize: 14.0,fontWeight: FontWeight.w300,overflow: TextOverflow.clip),textScaleFactor: 1.24,),
        ),
        Expanded(child: SizedBox()),
         
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 30),
          child: GestureDetector(
            child: const Text(
              'Read more',
              style: TextStyle(
                decoration: TextDecoration.underline,fontSize: 16.0,color: Color(0xffFFB19D),
              ),
            ),
            onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const SettingsScreen()),
                  );
                }
          ),
        ),
        const SizedBox(
                  height: 40.0,
                ),
      ]),
    );
  }
}
