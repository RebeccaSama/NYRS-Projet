
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class CarouselWithIndicatorDemo extends StatefulWidget {
  const CarouselWithIndicatorDemo() : super();

  final String title = "Carousel with indicator demo";

  @override
  CarouselWithIndicatorDemoState createState() =>
      CarouselWithIndicatorDemoState();
}

class CarouselWithIndicatorDemoState extends State<CarouselWithIndicatorDemo> {
  //
  int _current = 0;
  List imgList = [
    'https://picsum.photos/250?image=9',
    'https://picsum.photos/250?image=10',
    'https://picsum.photos/250?image=11',
    'https://picsum.photos/250?image=12',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          CarouselSlider(
            items: imgList.map((imgUrl) {
              return Container(
                margin: const EdgeInsets.all(5.0),
                child: ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(5.0)),
                  child: Image.network(
                    imgUrl,
                    fit: BoxFit.cover,
                    width: 1000.0,
                  ),
                ),
              );
            }).toList(),
            options: CarouselOptions(
                autoPlay: true,
                enlargeCenterPage: true,
                aspectRatio: 2.0,
                onPageChanged: (index, reason) {
                  setState(() {
                    _current = index;
                  });
                }),
          ),
          const SizedBox(
            height: 20.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: imgList.map((url) {
              int index = imgList.indexOf(url);
              return Container(
                width: 8.0,
                height: 8.0,
                margin:
                    const EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color:
                      _current == index ? Colors.redAccent : Colors.greenAccent,
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}




// import 'package:flutter/material.dart';
// import 'package:carousel_slider/carousel_slider.dart';

// class SliderPages extends StatelessWidget {
//    SliderPages({Key? key}) : super(key: key);
//  List itemlist = [
//   Container(
//                   padding: const EdgeInsets.all(16.0),
//                   // decoration: BoxDecoration(
//                   //   border: Border.all(color: Colors.blueAccent),
//                   //   borderRadius: BorderRadius.circular(8.0),
//                   // ),
//                   child: Column(
//                     mainAxisSize: MainAxisSize.min,
//                     children: [
//                       Container(
//                         padding:  const EdgeInsets.only(top: 60,),
//                 child: Image.asset('assets/logo/logo_vert.png', height: 100, fit: BoxFit.cover,),
//                       ),
//                       Container(
//                         padding: const EdgeInsets.only( bottom: 30
//             ),
//             child: const Text(
//               "_ _ _ _ _ _ _ _ _ _ _ _",
//                style: TextStyle(fontSize: 20,),
//                textAlign: TextAlign.center,
//                ),
//                       ),
//                       Container(
//                         padding: const EdgeInsets.only( bottom: 20),
//             child: const Text(
//               " Livrez-vous la vie facilement avec notre application de livraison !",
//                style: TextStyle(fontSize: 16,color: Color.fromARGB(221, 68, 67, 67)),
//                textAlign: TextAlign.center,
//                ),
//                       ),
//                     ],
//                   ),
//                 ),
               
//   Container(
//                   padding: const EdgeInsets.all(16.0),
//                   // decoration: BoxDecoration(
//                   //   border: Border.all(color: Colors.blueAccent),
//                   //   borderRadius: BorderRadius.circular(8.0),
//                   // ),
//                   child: Column(
//                     mainAxisSize: MainAxisSize.min,
//                     children: [
//                       Container(
//                        padding:  const EdgeInsets.only(top: 50,),
//                 child: Image.asset('assets/logo/logo_vert.png', height: 100, fit: BoxFit.cover,)
//                       ),
//                       Container(
//                         padding: const EdgeInsets.only( bottom: 20
//             ),
//             child: const Text(
//               "_ _ _ _ _ _ _ _ _ _ _ _",
//                style: TextStyle(fontSize: 15,),
//                textAlign: TextAlign.center,
//                ),
               
//                       ),
//                       Container(
//             padding: const EdgeInsets.only(bottom: 5),
//             child: const Text(
//               " Get your groceries delivered to your home",
//                style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
//                textAlign: TextAlign.center,
//                ),
//           ),
//          Container(
//             padding: const EdgeInsets.only( bottom: 10),
//             child: const Text(
//               " The best delivery app in town for delivering your daily fresh groceries",
//                style: TextStyle(fontSize: 16, color: Color.fromARGB(136, 107, 100, 100)),
//                textAlign: TextAlign.center,
//                ),
//           ),
//           //  Row(
//           //   mainAxisAlignment: MainAxisAlignment.center,
//           //   children: .map((image) {
//           //     int index = _images.indexOf(image);
//           //     return Container(
//           //       width: 10.0,
//           //       height: 10.0,
//           //       margin: EdgeInsets.symmetric(horizontal: 5.0),
//           //       decoration: BoxDecoration(
//           //         shape: BoxShape.circle,
//           //         color: _currentIndex == index ? Colors.blue : Colors.grey,
//           //       ),
//           //     );
//           //   }).toList(),
//           // ),
//                       Container(
//                         padding: const EdgeInsets.symmetric(vertical: 8.0),
//                         child: ElevatedButton(
//                           style: ElevatedButton.styleFrom(
//                                 shape: RoundedRectangleBorder(
//                                   borderRadius: BorderRadius.circular(20.0),
//                                 ),
//                                 minimumSize: const Size(double.infinity, 40.0)
//                               ),
//                           onPressed: () {},
//                           child: const Text('Shop now'),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
                         
//  ];
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       // appBar: AppBar(
//       //   title: const Text(' carrousel'),
//       // ),
//       body: Column(
//         children: [
//           Center(
//              child:// CarouselSlider(
//             //   options: CarouselOptions(
//             //     height: MediaQuery.of(context).size.height*.6,
//             //     enlargeCenterPage: true,
//             //     autoPlay: false,
//             //     enableInfiniteScroll: true,
//             //     // autoPlayInterval: const Duration(seconds: 3),
//             //     // autoPlayAnimationDuration: const Duration(milliseconds: 800),
//             //     pauseAutoPlayOnTouch: true,
//             //     scrollDirection: Axis.horizontal,
                
//             //   ),
//               CarouselSlider(
//             items: itemlist.map((imgUrl) {
//               return Container(
//                 margin: EdgeInsets.all(5.0),
//                 child: ClipRRect(
//                   borderRadius: BorderRadius.all(Radius.circular(5.0)),
//                   child: Image.network(
//                     imgUrl,
//                     fit: BoxFit.cover,
//                     width: 1000.0,
//                   ),
//                 ),
//               );
//             }).toList(), options: CarouselOptions(
//                 height: MediaQuery.of(context).size.height*.6,
//                 enlargeCenterPage: true,
//                 autoPlay: false,
//                 enableInfiniteScroll: true,
//                 // autoPlayInterval: const Duration(seconds: 3),
//                 // autoPlayAnimationDuration: const Duration(milliseconds: 800),
//                 pauseAutoPlayOnTouch: true,
//                 scrollDirection: Axis.horizontal,
                
//               ),  

//                         ),
                        
//                      ),
                    
//         Stack(children: [
//            Container(
          
//               height: MediaQuery.of(context).size.height*.4,
//               padding: const EdgeInsets.only(top:1000),
//             ),
//             Positioned(
//               top: 20,
//               bottom: 0,
//             child: Image.asset(
//               'assets/images/acceuil.png',

//               fit: BoxFit.fill,
//               width: MediaQuery.of(context).size.width,
//             ),
//           ),
//         ],) ],
//       ), );
//                     }
// }