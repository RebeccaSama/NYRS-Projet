
import 'package:flutter/material.dart';
import 'package:nyrs_projet/views/home.dart';
import 'package:nyrs_projet/views/products.dart';
import 'package:nyrs_projet/views/splashscreen.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
     
      debugShowCheckedModeBanner: false,
      home: HomeView()

    );
  }
}
