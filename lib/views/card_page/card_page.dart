import 'package:flutter/material.dart';
import 'package:nyrs_projet/views/card_page/widget/cardItem.dart';

import '../product_page/product_item.dart';

class CardView extends StatefulWidget {
  const CardView({Key? key}) : super(key: key);

  @override
  State<CardView> createState() => _CardViewState();
}

class _CardViewState extends State<CardView> {
  List<Map> data = [
    {
      "id": 1,
      "image": "assets/images/perper.png",
      "title": "Bell Pepper Red",
      "price": "500FCFA",
      "quantity": "1kg"
    },
    {
      "id": 2,
      "image": "assets/images/meat.png",
      "title": "Lamb meat",
      "price": "3000FCFA",
      "quantity": "1kg,"
    },
    {
      "id": 1,
      "image": "assets/images/perper.png",
      "title": "Bell Pepper Red",
      "price": "500FCFA",
      "quantity": "1kg"
    },
    {
      "id": 2,
      "image": "assets/images/meat.png",
      "title": "Lamb meat",
      "price": "3000FCFA",
      "quantity": "1kg,"
    },
    {
      "id": 1,
      "image": "assets/images/perper.png",
      "title": "Bell Pepper Red",
      "price": "500FCFA",
      "quantity": "1kg"
    },
    {
      "id": 2,
      "image": "assets/images/meat.png",
      "title": "Lamb meat",
      "price": "3000FCFA",
      "quantity": "1kg,"
    },
    {
      "id": 1,
      "image": "assets/images/perper.png",
      "title": "Bell Pepper Red",
      "price": "500FCFA",
      "quantity": "1kg"
    },
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
         appBar: AppBar(
         elevation: 0,
          backgroundColor: Colors.white,
          leading: 
             IconButton(onPressed:() {Navigator.pop(context);}, icon: const Icon(Icons.arrow_back_ios_new),color: Colors.black,),
        title: const SizedBox(child:  Text('Card',style: TextStyle(color: Colors.black),), ), 
      ),
        body: Column(children: [
     Container(
        padding: const EdgeInsets.only(top: 20),
        child: SingleChildScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          scrollDirection: Axis.vertical,
          child: ListView.separated(
            itemCount: data.length,
            shrinkWrap: true,
            itemBuilder: (BuildContext context, int index) {
              return 
               CardItem(
                visible: true,
                image: data[index]["image"],
                    price: data[index]["title"],
                    quantity: data[index]["quantity"],
                    title: data[index]["price"],
              );
              },
            separatorBuilder: (BuildContext context, int index) {
              return const Divider(
                color: Colors.grey, // Couleur du séparateur
                thickness: 1.0, // Épaisseur du séparateur
                height: 0.0, // Hauteur du séparateur
              );
            },
          ),
        ),
      ),
    
    ]));
  }
}
