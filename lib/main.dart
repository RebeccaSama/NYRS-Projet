import 'package:flutter/material.dart';
import 'package:nyrs_projet/views/login_page/signup.dart';
import 'package:nyrs_projet/views/register_page/signin.dart';
import 'package:nyrs_projet/views/splashscreen/splashscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false, home: SignUpPage());
  }
}
