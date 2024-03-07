import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:online_shop/Pages/cart_page.dart';
import 'package:online_shop/models/home_page_product_list.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int currentPage = 0;
  List <Widget> pages = const [
    ProductListHome(),
    CartPage(),
  ];

  @override
  Widget build(BuildContext context) {

    return  Scaffold(
      body: IndexedStack(
        index: currentPage,
        children: pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentPage,
        selectedFontSize: 0,
        unselectedFontSize: 0,
        iconSize: 35,
        onTap: (value){
          setState(() {
            currentPage = value;
          });
        },
        items: const [
          BottomNavigationBarItem(

            label: '',
              icon: Icon(Icons.home)
          ),
          BottomNavigationBarItem(
            label: '',
              icon: Icon(Icons.shopping_cart))
        ],
      ),
    );

  }
}
