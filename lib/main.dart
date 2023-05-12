import 'package:flutter/material.dart';
import 'package:nyrs_projet/views/card_page/card_page.dart';
import 'package:nyrs_projet/views/product_page/product_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false, home: CardView());
  }
}
