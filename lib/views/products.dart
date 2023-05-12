import 'package:flutter/material.dart';
import 'package:nyrs_projet/views/profilpage.dart';

class ProductsView extends StatefulWidget {
  const ProductsView({ Key? key }) : super(key: key);

  @override
  State<ProductsView> createState() => _ProductsViewState();
}

class _ProductsViewState extends State<ProductsView> {
    List<Map> items = [
    {
      "image": "assets/images/perper.png",
      "title": "Bell Pepper Red",
      "price": "500FCFA",
      "quantity": "1kg,"
    },
    {
    "image": "assets/images/meat.png",
      "title": "Lamb meat",
      "price": "3000FCFA",
      "quantity": "1kg,"
    },
    {
    "image": "assets/images/meat.png",
      "title": "Lamb meat",
      "price": "3000FCFA",
      "quantity": "1kg,"
    },
    {
    "image": "assets/images/meat.png",
      "title": "Lamb meat",
      "price": "3000FCFA",
      "quantity": "1kg,"
    },
    {
    "image": "assets/images/meat.png",
      "title": "Lamb meat",
      "price": "3000FCFA",
      "quantity": "1kg,"
    },
    {
    "image": "assets/images/meat.png",
      "title": "Lamb meat",
      "price": "3000FCFA",
      "quantity": "1kg,"
    },
    {
    "image": "assets/images/meat.png",
      "title": "Lamb meat",
      "price": "3000FCFA",
      "quantity": "1kg,"
    },
    {
    "image": "assets/images/meat.png",
      "title": "Lamb meat",
      "price": "3000FCFA",
      "quantity": "1kg,"
    },
    {
    "image": "assets/images/meat.png",
      "title": "Lamb meat",
      "price": "3000FCFA",
      "quantity": "1kg,"
    },
    {
    "image": "assets/images/meat.png",
      "title": "Lamb meat",
      "price": "3000FCFA",
      "quantity": "1kg,"
    },
    {
    "image": "assets/images/meat.png",
      "title": "Lamb meat",
      "price": "3000FCFA",
      "quantity": "1kg,"
    },
    {
    "image": "assets/images/meat.png",
      "title": "Lamb meat",
      "price": "3000FCFA",
      "quantity": "1kg,"
    },
    {
    "image": "assets/images/meat.png",
      "title": "Lamb meat",
      "price": "3000FCFA",
      "quantity": "1kg,"
    },
     {
    "image": "assets/images/meat.png",
      "title": "Lamb meat",
      "price": "3000FCFA",
      "quantity": "1kg,"
    },
     {
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
          backgroundColor: const Color(0xFF23AA49),
          leading: 
             IconButton(onPressed:() {Navigator.pop(context);}, icon: const Icon(Icons.arrow_back_ios_new)),
        elevation: 5,
          title: const Text(
                    'Products', 
                    style: TextStyle(color: Colors.white,),
                  ), 
                ),
      body: Column(
        children: [
          Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [ 
                               Container(
                                  padding: const EdgeInsets.only(left: 10, top: 15),
                                   child:  InkWell(
                                      child:  const CircleAvatar(
                                        radius: 25,
                                        backgroundImage:  AssetImage("assets/images/Ls.png"),
                                      ),
                                      onDoubleTap: () {
                                        Navigator.push(context, MaterialPageRoute(builder: (context)=> const ProfilePage()));
                                        },
                                    ),
                                  ),
                               
                             Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                               children:  [
                                Container(
                                  padding: const EdgeInsets.only(left: 10,top: 15 ),
                                  child:
                                  const Text(
                                  'Welcome',
                                  style: TextStyle(fontWeight: FontWeight.normal, color: Color.fromARGB(230, 7, 7, 7),fontSize: 12),
                                 
                                ),),
                              Container(
                                padding: const EdgeInsets.only(top: 2, left: 10),
                                child: const Text(
                                      'Rebecca SAMA ',
                                      style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black, fontSize: 14),
                                    ),
                              ),]),  ],
                             ),
                       const SizedBox(height: 10,),
                                     Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                   
                                  Container(
                                    padding: const EdgeInsets.only(left: 18, top: 15),
                                    child: const Text("Vegetable", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                                  ),
                                  Container(
                                    padding: const EdgeInsets.only(right: 15),
                                    child: TextButton(child: const Icon(Icons.search_rounded, color:  Color(0xFF23AA49),), onPressed: ()=>{},),
                                  )
                                ],
                              ),
                       const SizedBox(height: 10,),
  Expanded(
    child: Container(
      padding: const EdgeInsets.all(10),
      width: 306,
      child: SingleChildScrollView(
      physics: const AlwaysScrollableScrollPhysics(),
      scrollDirection: Axis.vertical,
      child: GridView.builder(
        itemCount: items.length,
        shrinkWrap: true,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            width: 20,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
            ),
            padding: const EdgeInsets.all(5),
            height: 70,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  decoration:  BoxDecoration(
                    borderRadius:  BorderRadius.circular(15),
                    // boxShadow:[
                    //   BoxShadow(
                    //     // color: Colors.grey.withOpacity(0.5),
                    //     spreadRadius: 5,
                    //     blurRadius: 2,
                    //     offset: Offset(0,3),
                    //   )
                    // ] ,
        //             gradient: const RadialGradient(
        //           center: Alignment.center,
        //           radius: 0.5,
        //           colors: [
        //             Colors.white,
        //             Colors.green,
        //           ],
        // ),
                  ),
                  child: Image.asset(
                    items[index]["image"],
                    height: 80,
                    width: 80,
                  ),
                ),
                const SizedBox(height: 4),
                   Align(
                    alignment: Alignment.centerLeft,
                     child: Container(
                      padding: const EdgeInsets.only(left: 10),
                       child: Text(
                        items[index]["title"],
                        textAlign: TextAlign.center,
                        style: const TextStyle(fontSize: 12),
                                     ),
                     ),
                   ),
                const SizedBox(height: 2),
                Container(
                  padding: const EdgeInsets.only(left: 10),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(items[index]["quantity"], style: const TextStyle(color: Colors.red, fontSize: 12),),
                      const SizedBox(width: 2),
                      Text(items[index]["price"],style: const TextStyle(color: Colors.red,fontSize: 12),),
                      const SizedBox(width: 15),
                       Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      height: 25,
                      width: 25,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(90),
                        color: const Color(0xFF23AA49),
                      ),
                      child: const Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                    ),
                  ),
                    ],
                  ),
                ),
               
              ],
            ),
          );
        },
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
        ),
      ),
    ),
    ),
  )
 ],
      ),
    );
  }
}