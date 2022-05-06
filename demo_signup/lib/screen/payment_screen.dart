import 'package:demo_signup/model/payment_model.dart';
import 'package:demo_signup/screen/customer_info_screen.dart';
import 'package:flutter/material.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({Key? key}) : super(key: key);

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0.0,
        title: const Center(child: Text("Payment for services")),
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
        children: <Widget>[
          Expanded(
            flex: 3,
            child: ListView.builder(
              itemCount: payment.length,
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
                          child: Image.asset(payment[index].icon),
                        ),
                      ),
                      const SizedBox(
                        width: 16.0,
                      ),
                      Text(payment[index].name),
                      const Expanded(child: SizedBox()),
                      Text(payment[index].prime),
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
          Expanded(
            flex: 2,
            child: Row(
              children: [
                Container(
                  alignment: Alignment.topLeft,
                  margin: const EdgeInsets.symmetric(horizontal: 30),
                  child:const Text(
                    "Total",
                    style: TextStyle(fontSize: 16.0),
                  ),
                ),
                const Expanded(child: SizedBox()),
                Container(
                  alignment: Alignment.topLeft,
                  margin: const EdgeInsets.symmetric(horizontal: 30),
                  child: const Text(
                    "\$300",
                    style: TextStyle(fontSize: 16.0),
                  ),
                ),
                const SizedBox(
                  width: 2.0,
                ),
              ],
            ),
          ),
          const Expanded(child: SizedBox()),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const CustomerScreen()),
              );
            },
            child: Container(
              height: 60,
              margin: const EdgeInsets.symmetric(horizontal: 30),
              color: const Color(0xFF20C3AF),
              child: const Center(
                child: Text(
                  "Checkout",
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

List<Payment> payment = [
  Payment(
      name: 'Furniture works', icon: 'assets/images/icon3.png', prime: '\$50'),
  Payment(
      name: 'Cleaning services', icon: 'assets/images/icon3.png', prime: '\$50'),
  Payment(
      name: 'Equipment repair', icon: 'assets/images/icon3.png', prime: '\$50'),
  Payment(
      name: 'Courier services', icon: 'assets/images/icon3.png', prime: '\$50'),
  Payment(
      name: 'Interior design', icon: 'assets/images/icon3.png', prime: '\$50'),
];

Widget item({required String name}) {
  return Text('$name');
}

Widget icon({required String icon}) {
  return Text('$icon');
}

Widget prime({required String prime}) {
  return Text('$prime');
}
