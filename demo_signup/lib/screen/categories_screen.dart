import 'package:demo_signup/screen/profile_screen.dart';
import 'package:demo_signup/splash/splash_screen.dart';
import 'package:demo_signup/widget/custom_app_barr.dart';
import 'package:flutter/material.dart';

import '../model/categories_model.dart';
import '../widget/custom_button.dart';

class CategoriesScreen extends StatefulWidget {
  const CategoriesScreen({Key? key}) : super(key: key);

  @override
  State<CategoriesScreen> createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Categories',
        centerTitle: true,
        actionButton: Icon(
          Icons.mobile_friendly,
          color: Colors.black,
        ),
      ),
      // appBar: AppBar(
      //   leading: const Icon(
      //     Icons.arrow_back_ios,
      //     color: Colors.black,
      //   ),
      //   title: const Center(
      //       child: Text('Categories', style: TextStyle(color: Colors.black))),
      //   backgroundColor: const Color.fromARGB(0, 255, 255, 255),
      //   elevation: 0.0,
      //   actions: const [
      //     Icon(Icons.menu, color: Colors.black),
      //   ],
      // ),
      body: _categoriesBody(),
    );
  }

  Widget _categoriesBody() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 30),
      child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
        _searchByCategories(),
        Expanded(child: _listCategories()),
        
        _buttonBody(),
      ]),
    );
  }

  Widget _searchByCategories() {
    return Container(
      color: const Color(0xFFF7F7F7),
      height: 60,
      width: 315,
      child: const Center(
        child: TextField(
          decoration: InputDecoration(
            hintText: 'Search by category',
            border: InputBorder.none,
            icon: Icon(Icons.search),
          ),
        ),
      ),
    );
  }

  List<Category> categories = [
    Category(name: 'Furniture works', icon: 'assets/images/icon4.png'),
    Category(name: 'Cleaning services', icon: 'assets/images/icon5.png'),
    Category(name: 'Equipment repair', icon: 'assets/images/icon2.png'),
    Category(name: 'Courier services', icon: 'assets/images/icon5.png'),
    Category(name: 'Interior design', icon: 'assets/images/icon2.png'),
    Category(name: 'Interior design', icon: 'assets/images/icon4.png'),
    Category(name: 'Interior design', icon: 'assets/images/icon5.png'),
    Category(name: 'Interior design', icon: 'assets/images/icon4.png'),
    Category(name: 'Interior design', icon: 'assets/images/icon2.png'),

  ];
  
  Widget _listCategories() {
    return ListView.builder(
      itemCount: categories.length,
      itemBuilder: (_, int index) {
        return SizedBox(
          
          child: Container(
            
            
            
            child: Row(
              
              children: [
                Container(
                  height: 80,
                  width: 80,
                  color: const Color.fromARGB(40, 70, 68, 68),
                  child: Center(
                    child: Image.asset(categories[index].icon),
                  ),
                ),
                const SizedBox(
                  width: 16.0,
                ),
                Text(
                  categories[index].name,
                ),
                const Expanded(child: SizedBox()),
                const Icon(
                  Icons.arrow_forward_ios,
                  size: 14.0,
                ),
                const SizedBox(
                  width: 5.0,
                ),
              ],
            ),
          ),
          height: 100,
        );
      },
    );
  }

  Widget _buttonBody() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 1),
      child: Row(
        children: [
          
          Expanded(
            
            child: CustomButton(
              title: "Back",
              onTap: () {
                Navigator.pop(context);
              },
              backgroundColor: Color(0xffF7F7F7),
              textColor: Color(0xff838391),
            ),
            
          ),
          const SizedBox(
            width: 16.0,
          ),
          Expanded(
            child: CustomButton(
          title: "Next",
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const ProfileScreen()),
            );
          },
        ),
          ),
        ],
      ),
    );
  }
}

Widget item({required String name}) {
  return Text('$name');
}

Widget icon({required String icon}) {
  return Text('$icon');
}
