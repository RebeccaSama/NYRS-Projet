import 'dart:async';

import 'package:flutter/material.dart';
import 'package:nyrs_projet/views/slidePages/slide.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({ Key? key }) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState(){
    super.initState();
    Timer(const Duration(seconds: 3), ()=> Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) =>  const SliderPages(myBackgroundColor: Colors.white,))));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      backgroundColor: const Color(0xFF23AA49),
      body:
       Center(
         child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/logo/logo_blanc.png', height: MediaQuery.of(context).size.height * .1),
                      
              ],
      ),
       ),
    );
  }
}





