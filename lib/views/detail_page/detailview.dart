import 'package:flutter/material.dart';
import 'package:nyrs_projet/views/detail_page/component.dart';
import 'package:nyrs_projet/views/detail_page/detail_item.dart';
import 'package:shape_of_view_null_safe/shape_of_view_null_safe.dart';

import '../../composants/button.dart';
import '../card_page/widget/cardItem.dart';

class DetailView extends StatefulWidget {
  const DetailView({ Key? key }) : super(key: key);

  @override
  State<DetailView> createState() => _DetailViewState();
}

class _DetailViewState extends State<DetailView> {
  List<Map> data = [
    {
      "id": 2,
      "image": "assets/images/meat.png",
      "title": "Lamb meat",
      "price": "3000FCFA",
      "quantity": "1kg,"
    },
    ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Stack(children: [
ShapeOfView(
            elevation: 0,
            height: 350,
            width: double.infinity,
  shape: ArcShape(
    direction: ArcDirection.Outside,
    height: 40,
    position: ArcPosition.Bottom
  ),
  child: Container(
    color: const Color(0XFF23AA49).withOpacity(0.12),
    child:Center(
      child: Image.asset(
    "assets/images/gg.png", height: 150, width: 150,),)),
),
Positioned(top: 20,left: 20, child: 
    Container(
      padding:const EdgeInsets.all(8), 
      decoration: const BoxDecoration(
        color: Colors.white,
        shape:BoxShape.circle),
    child:
    const  Icon(Icons.arrow_back_ios),
    )
 ),
Positioned(top: 20,right: 20, child: Container(padding:const EdgeInsets.all(8), decoration: const BoxDecoration(color: Colors.white,shape: BoxShape.circle),
child:const  Icon(Icons.search),))

          ],),
          Container(
            padding: const EdgeInsets.all(1),
            child: 
               const DetailItem(
                title: "Lamb meat",
                price: "3000FCFA",
                quantity: "1kg"
                
               )
          ),
       Container(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: const Text("Ginger is a flowering plant whose rhizome, ginger root or ginger, is widely used as a spice and a folk medicine.", style: TextStyle(
          fontSize: 12, 
          color: Colors.grey
        ),),
       ),
         const SizedBox(height: 15,),
    Column(
      children: [
         Row(
          crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
           children: const [
             SizedBox(
                 child:  Component(
                  image: "assets/images/organic.png", 
                  title: "100%", 
                  subtitle: "organic"
                  ),
               ),
                SizedBox(
                 child:  Component(
                  image: "assets/images/calender.png", 
                  title: "1 Year", 
                  subtitle: "Expiration"
                  ),
               ),
           ],
         ),
         const SizedBox(height: 10,),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
           children: const [
             SizedBox(
                 child:  Component(
                  image: "assets/images/best.png", 
                  title: "4.8", 
                  subtitle: "Review"
                  ),
               ),
                SizedBox(
                 child:  Component(
                  image: "assets/images/lamb.png", 
                  title: "80 kcal", 
                  subtitle: "100G"
                  ),
               ),
           ],
         ),
      
      ],
    ),
     ButtonComponent(title: "Add to card", onPressed: () {  },),
        ],
      ),
    );
  }
}