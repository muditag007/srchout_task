// ignore_for_file: prefer_const_constructors, unused_import

import 'package:Mudit/desc_page.dart';
import 'package:Mudit/home_page.dart';
import 'package:Mudit/pay_page.dart';
// import 'package:bike_rental/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // home: PayPage(),
      home: HomePage(),
    );
  }
}
