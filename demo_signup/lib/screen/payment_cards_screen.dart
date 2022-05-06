import 'package:demo_signup/screen/payment_cards_screens.dart';
import 'package:demo_signup/screen/payment_screen.dart';
import 'package:flutter/material.dart';

import '../model/payment_card_model.dart';

class PaymentCardScreen extends StatefulWidget {
  const PaymentCardScreen({Key? key}) : super(key: key);

  @override
  State<PaymentCardScreen> createState() => _PaymentCardScreenState();
}

class _PaymentCardScreenState extends State<PaymentCardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0.0,
        title: const Center(child: Text("Payment cards")),
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
            height: 52.0,
          ),
          Expanded(
            flex: 2,
            child: ListView.builder(
              itemCount: paymentcard.length,
              itemBuilder: (_, int index) {
                return Container(
                  color: Color.fromARGB(255, 255, 255, 255),
                  child: Row(
                    children: [
                      const SizedBox(
                        width: 30.0,
                      ),
                      Container(
                        height: 60,
                        width: 60,
                        color: Color.fromARGB(40, 255, 255, 255),
                        child: Center(
                          child: Image.asset(paymentcard[index].icon),
                        ),
                      ),
                      const SizedBox(
                        width: 16.0,
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(vertical: 30),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              child: Expanded(
                                  child: Text(paymentcard[index].account)),
                            ),
                            Expanded(child: Text(paymentcard[index].date)),
                          ],
                        ),
                      ),
                      const Expanded(child: SizedBox()),
                      Container(
                        height: 60,
                        width: 60,
                        color: Color.fromARGB(40, 255, 255, 255),
                        child: Center(
                          child: Image.asset(paymentcard[index].name),
                        ),
                      ),
                      const SizedBox(
                        width: 30.0,
                      ),
                    ],
                  ),
                  height: 100,
                );
              },
            ),
          ),
          const Expanded(child: SizedBox()),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const PaymentCardScreenSecond()),
              );
            },
            child: Container(
              height: 60,
              margin: const EdgeInsets.symmetric(horizontal: 30),
              color: const Color(0xFF20C3AF),
              child: const Center(
                child: Text(
                  "Add new card",
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

List<Paymentcard> paymentcard = [
  Paymentcard(
      name: 'assets/images/visa_logo.png',
      icon: 'assets/images/rectanglee.png',
      account: '**** **** **** 3872',
      date: '17/2020'),
  Paymentcard(
      name: 'assets/images/visa_logo.png',
      icon: 'assets/images/rectanglee.png',
      account: '**** **** **** 2873',
      date: '07/2022'),
  Paymentcard(
      name: 'assets/images/mastercard_logo.png',
      icon: 'assets/images/rectangle.png',
      account: '**** **** **** 3212',
      date: '10/2024'),
  Paymentcard(
      name: 'assets/images/visa_logo.png',
      icon: 'assets/images/rectanglee.png',
      account: '**** **** **** 3412',
      date: '12/2024'),
];
Widget icon1({required String name}) {
  return Text('$name');
}

Widget icon({required String icon}) {
  return Text('$icon');
}

Widget account({required String account}) {
  return Text('$account');
}

Widget date({required String date}) {
  return Text('$date');
}
