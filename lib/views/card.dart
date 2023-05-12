import 'package:flutter/material.dart';

class CardView extends StatefulWidget {
  const CardView({ Key? key }) : super(key: key);

  @override
  State<CardView> createState() => _CardViewState();
}

class _CardViewState extends State<CardView> {

   List<Map> data = [
   {
    "id":1,
      "image": "assets/images/perper.png",
      "title": "Bell Pepper Red",
      "price": "500FCFA",
      "quantity": "1kg"
    },
    {
     "id":2,
    "image": "assets/images/meat.png",
      "title": "Lamb meat",
      "price": "3000FCFA",
      "quantity": "1kg,"
    },
  ];
Widget _incrementButton(int index) {
  return FloatingActionButton(
    child:const Icon(Icons.add, color: Colors.black87),
    backgroundColor: Colors.white,
    onPressed: () {
      setState(() {
        data[index]['title']++;
      });
    },
  );
}
Widget _decrementButton(int index) {
  return FloatingActionButton(
      onPressed: () {
        setState(() {
          data[index]['title']--;
        });
      },
      child:const Icon( IconData(0xe15b, fontFamily: 'MaterialIcons'), color: Colors.black),
      backgroundColor: Colors.white);
}

   
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Column(
        children: [
          Row(
               mainAxisAlignment: MainAxisAlignment.start,
               crossAxisAlignment: CrossAxisAlignment.center,
                 children: [
                  Container(
                    padding: const EdgeInsets.only(right: 15),
                    child: IconButton(onPressed:() {Navigator.pop(context);}, icon: const Icon(Icons.arrow_back_ios_new),color: Colors.black,),
                      ),
                     Container(
                        padding: const EdgeInsets.only(left: 100),
                         child: const Text("Card", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                          ),
                                    
                          ], ),
 ListView.separated(
  shrinkWrap: true,
  itemBuilder: (context, index) {return Card(
    elevation: 1.0,
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          _decrementButton(data[index]['id']),
          Text(
            '${data[index]['id']}',
            style: TextStyle(fontSize: 18.0),
          ),
          _incrementButton(data[index]['id']),
        ],
      ),
    ),
  );

  
  }, separatorBuilder: (context,__)=>const SizedBox(height: 8,), itemCount: data.length),
  
  /*  Container(
      padding: const EdgeInsets.only(top: 20),
      child: SingleChildScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        scrollDirection: Axis.vertical,
        child: ListView.builder(
          itemCount: data.length,
          shrinkWrap: true,
          itemBuilder: (BuildContext context, int index) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                 
                  padding: const EdgeInsets.all(5),
                  height: 50,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        decoration:  BoxDecoration(
                          borderRadius:  BorderRadius.circular(15),
                      
                        ),
                        child: Image.asset(
                          data[index]["image"],
                          height: 80,
                          width: 80,
                        ),
                      ),
                        
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                    padding: const EdgeInsets.only(left: 1),
                                     child: Text(
                                      data[index]["title"],
                                      textAlign: TextAlign.start,
                                      style: const TextStyle(fontSize: 12),
                                                   ),
                           ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(data[index]["quantity"], style: const TextStyle(color: Colors.red, fontSize: 12),),
                               
                                const SizedBox(width: 2),
                                Text(data[index]["price"],style: const TextStyle(color: Colors.red,fontSize: 12),),
                                  ],
                              ), ]),
                              const SizedBox(width: 30,),
                                 Align(
                          alignment: Alignment.centerRight,
                          child: Container(
                                height: 25,
                                width: 25,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(90),
                                ),
                                child: const Icon(
                                  Icons.remove_circle,
                                  color: Colors.grey,
                                ),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(5),
                          child: const Text("5"),
                        ),
                           Container(
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
                      ],
                  ),
                ),
              ],
            );
          },
         
        ),
      ),
    ),
   */
  ])
    );
            }
}
