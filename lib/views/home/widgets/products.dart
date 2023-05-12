import 'package:flutter/material.dart';
import 'package:nyrs_projet/views/profile/profilpage.dart';

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
      "quantity": "1kg"
    },
    {
    "image": "assets/images/meat.png",
      "title": "Lamb meat",
      "price": "3000FCFA",
      "quantity": "1kg"
    },
    {
    "image": "assets/images/meat.png",
      "title": "Lamb meat",
      "price": "3000FCFA",
      "quantity": "1kg"
    },
    {
    "image": "assets/images/meat.png",
      "title": "Lamb meat",
      "price": "3000FCFA",
      "quantity": "1kg"
    },
    {
    "image": "assets/images/meat.png",
      "title": "Lamb meat",
      "price": "3000FCFA",
      "quantity": "1kg"
    },
    {
    "image": "assets/images/meat.png",
      "title": "Lamb meat",
      "price": "3000FCFA",
      "quantity": "1kg"
    },
    {
    "image": "assets/images/meat.png",
      "title": "Lamb meat",
      "price": "3000FCFA",
      "quantity": "1kg"
    },
    {
    "image": "assets/images/meat.png",
      "title": "Lamb meat",
      "price": "3000FCFA",
      "quantity": "1kg"
    },
    {
    "image": "assets/images/meat.png",
      "title": "Lamb meat",
      "price": "3000FCFA",
      "quantity": "1kg"
    },
    {
    "image": "assets/images/meat.png",
      "title": "Lamb meat",
      "price": "3000FCFA",
      "quantity": "1kg"
    },
    {
    "image": "assets/images/meat.png",
      "title": "Lamb meat",
      "price": "3000FCFA",
      "quantity": "1kg"
    },
    {
    "image": "assets/images/meat.png",
      "title": "Lamb meat",
      "price": "3000FCFA",
      "quantity": "1kg"
    },
    {
    "image": "assets/images/meat.png",
      "title": "Lamb meat",
      "price": "3000FCFA",
      "quantity": "1kg"
    },
     {
    "image": "assets/images/meat.png",
      "title": "Lamb meat",
      "price": "3000FCFA",
      "quantity": "1kg"
    },
     {
    "image": "assets/images/meat.png",
      "title": "Lamb meat",
      "price": "3000FCFA",
      "quantity": "1kg"
    },
   
  ];
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Column(
        children: [
          Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [ 
                               Container(
                                  padding: const EdgeInsets.only(left: 10),
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
                                  padding: const EdgeInsets.only(left: 10, ),
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
                                    padding: const EdgeInsets.only(right: 15),
                                    child: IconButton(onPressed:() {Navigator.pop(context);}, icon: const Icon(Icons.arrow_back_ios_new),color: Colors.black,),
                                  ),
                                  Container(
                                    padding: const EdgeInsets.only(left: 18),
                                    child: const Text("Vegetable"),
                                  ),
                                  Container(
                                    padding: const EdgeInsets.only(right: 15),
                                    child: TextButton(child: const Icon(Icons.search, color:  Color(0xFF23AA49),), onPressed: ()=>{},),
                                  )
                                ],
                              ),
                       const SizedBox(height: 10,),
                             SingleChildScrollView(
                               child: GridView.builder(
                                         itemCount: items.length,
                                         shrinkWrap: true,
                                         itemBuilder: (BuildContext context, int index){
                                           return  Container(
                                       padding: const EdgeInsets.all(10),
                                       height: 150,
                                       child: Column(
                                         children: [
                                           Image.asset(items[index]["image"]),
                                            Expanded(child: 
                                           items[index]["title"]),
                                            Row(
                                              children: [
                                                Expanded(child: 
                                           items[index]["price"]),
                                           Expanded(child: 
                                           items[index]["quantity"]),
                                              ],
                                            ),
                                           Container(
                                             height: 50,
                                             decoration: BoxDecoration(
                                               borderRadius: BorderRadius.circular(90),
                                               color:const Color(0xFF23AA49)
                                             ),
                                             padding: const EdgeInsets.only(left: 30),
                                             child: 
                                             TextButton(child: const Icon(Icons.add, color: Colors.white,), onPressed: (){},) 
                                           )
                                         ],
                                       ),
                                     );
                                           },
                                         gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                                             crossAxisCount: 2,
                                             mainAxisSpacing: 10,
                                             crossAxisSpacing: 10
                                     ),),
                             )
            
                       
                             
                     
        ],
      ),
    );
  }
}