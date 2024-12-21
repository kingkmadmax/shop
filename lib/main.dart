import 'package:flutter/material.dart';
import 'package:shop/pagees/Sing_up.dart';
import 'package:shop/pagees/login.dart';
// import 'package:shop/pagees/bootomenav.dart';
// import 'package:shop/pagees/home.dart';
// import 'package:shop/pagees/login.dart';
// import 'package:shop/pagees/product_file.dart';
// import 'pagees/Landing.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SingUp(),
    );
  }
}
