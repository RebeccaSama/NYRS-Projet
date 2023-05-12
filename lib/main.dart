import 'package:flutter/material.dart';
import 'package:nyrs_projet/views/home/home.dart';
import 'package:nyrs_projet/views/home/widgets/products.dart';
import 'package:nyrs_projet/views/splashscreen/splashscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false, home: HomeView());
  }
}
