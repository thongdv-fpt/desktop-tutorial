import 'package:flutter/material.dart';

class PaymentCardScreenSecond extends StatefulWidget {
  const PaymentCardScreenSecond({Key? key}) : super(key: key);

  @override
  State<PaymentCardScreenSecond> createState() =>
      _PaymentCardScreenSecondState();
}

class _PaymentCardScreenSecondState extends State<PaymentCardScreenSecond> {
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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const SizedBox(
            height: 52.0,
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 30),
            height: 202.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
              boxShadow: const [
                BoxShadow(color: Colors.white, spreadRadius: 3),
              ],
              gradient: const LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  Color(0xff02DA80),
                  Color(0xff0284D8),
                ],
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 19,
                ),
                Row(
                  children: [
                    Container(
                        margin: const EdgeInsets.symmetric(horizontal: 23),
                        child: const Text('* * * * 3872',style: TextStyle(fontSize: 15.0),)),
                    
                    const Expanded(child: SizedBox()),
                    const Text('17/20',style: TextStyle(fontSize: 15.0)),
                    const SizedBox(
                      width: 23,
                    ),
                  ],
                ),
                const Expanded(child: SizedBox()),
                Container(
                    margin: const EdgeInsets.symmetric(horizontal: 23),
                    child: const Text('\$ 25,388',style: TextStyle(fontSize: 25),)),
                const SizedBox(
                  height: 19,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 40.0,
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 30),
            child: Text("Card Number"),
          ),
          const SizedBox(
            height: 16.0,
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 30),
            color: const Color(0xFFF2F2F2),
            height: 60,
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.symmetric(horizontal: 22.0),
            child: Row(
              children: const [
                Text(
                  "**** **** **** 3872",
                  style: TextStyle(fontSize: 16.0, color: Color(0xffB0B0C3)),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 26.0,
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 30),
            child: Row(
              children: const <Widget>[
                Expanded(child: Text('Exp. Month')),
                SizedBox(
                  width: 26.0,
                ),
                Expanded(
                    child: Text('Exp.Year', style: TextStyle(fontSize: 16.0))),
                SizedBox(
                  width: 45.0,
                ),
                Expanded(child: Text('CVV')),
              ],
            ),
          ),
          const SizedBox(
            height: 16.0,
          ),
          Row(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                color: const Color(0xFFF2F2F2),
                height: 60,
                width: 100,
                margin: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: const <Widget>[
                    Text(
                      "07",
                      style: TextStyle(fontSize: 16.0),
                    ),
                    SizedBox(
                      width: 14.0,
                    ),
                    Icon(Icons.expand_more),
                  ],
                ),
              ),
              Container(
                // margin: const EdgeInsets.symmetric(horizontal: 10),
                color: const Color(0xFFF2F2F2),
                height: 60,
                width: 100,
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Row(
                  children: const <Widget>[
                    Text(
                      "2020",
                      style: TextStyle(fontSize: 16.0),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Icon(Icons.expand_more),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                color: const Color(0xFFF2F2F2),
                height: 60,
                width: 100,
                margin: const EdgeInsets.symmetric(horizontal: 23.0),
                child: Row(
                  children: const <Widget>[
                    Text(
                      "***",
                      style: TextStyle(fontSize: 16.0),
                    ),
                    SizedBox(
                      width: 35.0,
                    ),
                    Icon(Icons.remove_red_eye),
                  ],
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
                        builder: (context) => const PaymentCardScreenSecond()),
                  );
                },
                child: Container(
                  height: 60,
                  margin: const EdgeInsets.symmetric(horizontal: 30),
                  color: const Color(0xFF20C3AF),
                  child: const Center(
                    child: Text(
                      "Save card",
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
