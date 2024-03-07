import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:online_shop/Pages/home_page.dart';
import 'package:online_shop/Pages/product_detail_page.dart';
import 'package:online_shop/models/product_list.dart';
import 'package:provider/provider.dart';

import 'models/cart_provider.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CartProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(
              seedColor: const Color.fromRGBO(254, 206, 1, 1),
              primary: const Color.fromRGBO(254, 206, 1, 1),
            ),
            appBarTheme: AppBarTheme(
              titleTextStyle: GoogleFonts.lato(
                fontSize: 20,
                color: Colors.black
              )
            ),
            inputDecorationTheme: InputDecorationTheme(
                hintStyle:
                    GoogleFonts.lato(fontWeight: FontWeight.bold, fontSize: 16),
                prefixIconColor: Color.fromRGBO(119, 119, 119, 1))),
        home:  const HomePage(),
      ),
    );
  }
}
