import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:nyrs_projet/views/register_page/signup.dart';

import '../../composants/button.dart';

Color myBackgroundColor = Colors.white;

class SliderPages extends StatefulWidget {
  final Color myBackgroundColor;
  const SliderPages({Key? key, required this.myBackgroundColor}) : super(key: key);

  @override
  State<SliderPages> createState() => _SliderPagesState();
}

class _SliderPagesState extends State<SliderPages> {
 
  late int _currentIndex = 0;         
  @override

  Widget build(BuildContext context) {
    final List<Container> _slides = [
    Container(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding:  const EdgeInsets.only(top: 60,),
            child: Image.asset('assets/logo/logo_vert.png', height: 100, fit: BoxFit.cover,),
          ),
          Container(
            padding: const EdgeInsets.only(bottom: 30),
            child: const Text(
              "_ _ _ _ _ _ _ _ _ _ _ _",
              style: TextStyle(fontSize: 20,),
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            padding: const EdgeInsets.only(bottom: 20),
            child: const Text(
              " Deliver your life easily with our delivery app!",
              style: TextStyle(fontSize: 16,color: Color.fromARGB(221, 68, 67, 67)),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    ),
    Container(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding:  const EdgeInsets.only(top: 50,),
            child: Image.asset('assets/logo/logo_vert.png', height: 100, fit: BoxFit.cover,)
          ),
          Container(
            padding: const EdgeInsets.only(bottom: 20),
            child: const Text(
              "_ _ _ _ _ _ _ _ _ _ _ _",
              style: TextStyle(fontSize: 20,),
              textAlign: TextAlign.center,
            ),
          ),
      const SizedBox(
            child:  Text(
              " Get your groceries delivered to your home",
              style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ),
          const Expanded(
            child:  Text(
              " The best delivery app in town for delivering your daily fresh groceries",
              style: TextStyle(fontSize: 16, color: Color.fromARGB(136, 107, 100, 100)),
              textAlign: TextAlign.center,
            ),
          ),
           ButtonComponent(
            title: "Shop now", 
            onPressed: () {
                          Navigator.push(
                            context, MaterialPageRoute(
                              builder: (context)=> const SignUpPage()
                              ));
                        },)  
      ],
      ),
    ),
  ];

    return Scaffold(
       backgroundColor: myBackgroundColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            CarouselSlider(
              items: _slides,
              options: CarouselOptions(
                  height: MediaQuery.of(context).size.height*.6,
                  enlargeCenterPage: true,
                  autoPlay: true,
                  enableInfiniteScroll: true,
                  autoPlayInterval: const Duration(seconds: 3),
                  // autoPlayAnimationDuration: const Duration(milliseconds: 800),
                  pauseAutoPlayOnTouch: true,
                  scrollDirection: Axis.horizontal,
                  onPageChanged: (index, reason) {
                  setState(() {
                    _currentIndex = index;
                  });}
                ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: _slides.map((slide) {
                int index = _slides.indexOf(slide);
                return Container(
                  width: 8.0,
                  height: 8.0,
                  margin: const EdgeInsets.symmetric(horizontal: 4.0),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: _currentIndex == index ?  const Color(0xFF23AA49) : Colors.grey,
                  ),
                );
              }).toList(),
            ),const SizedBox(height: 10,),
          Column(
            children: [
                 Stack(children: [
             Container(
            color: myBackgroundColor,
                height: MediaQuery.of(context).size.height*.4,
                padding: const EdgeInsets.only(top: 0),
              ),
              Positioned(
                top: 10,
                bottom: 0,
              child: ColorFiltered(
                colorFilter: ColorFilter.mode(myBackgroundColor.withOpacity(0.8), BlendMode.dstATop),
                child: Image.asset(
                  'assets/images/acceuil.png',
              
                  fit: BoxFit.fill,
                  width: MediaQuery.of(context).size.width,
                ),
              ),
            ),
          ],)
            ],
          )
          ],
        ),
      )
      );  }

}

 
     