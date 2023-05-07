import 'package:flutter/material.dart';
import 'package:nyrs_projet/views/profilpage.dart';

class HomeView extends StatefulWidget {
   const HomeView({ Key? key }) : super(key: key);
  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
 
  @override
  Widget build(BuildContext context) {
     final ScrollController _scrollController = ScrollController();
   List<Map> data = [
    {
      "image": "assets/images/acceuil.png",
      "title": "offers",
      "title2": "Get",
      "titlebtn": "Grab offert"
    },
    {
    "image": "assets/images/acceuil.png",
      "title": "offers",
      "title2": "Get",
      "titlebtn": "Grab offert"
    },
    {
     "image": "assets/images/acceuil.png",
      "title": "offers",
      "title2": "Get",
      "titlebtn": "Grab offert"
    },
    {
       "image": "assets/images/acceuil.png",
      "title": "offers",
      "title2": "Get",
      "titlebtn": "Grab offert"
    },
    {
      "image": "assets/images/acceuil.png",
      "title": "offers",
      "title2": "Get",
      "titlebtn": "Grab offert"
    },
    {
      "image": "assets/images/acceuil.png",
      "title": "offers",
      "title2": "Get",
      "titlebtn": "Grab offert"
    }
  ];
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
   
  ];
   int _selectedIndex = 0;


  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
    return Scaffold(
      body: 
      
        Column(
          children: [
            Column(
          children: [
              Container(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                   child: 
                   Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [ 
                                  Expanded(
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
                                  padding: const EdgeInsets.only(right: 100, ),
                                  child:
                                  const Text(
                                  'Welcome',
                                  style: TextStyle(fontWeight: FontWeight.normal, color: Color.fromARGB(230, 7, 7, 7),fontSize: 12),
                                 
                                ),),
                              Container(
                                padding: const EdgeInsets.only(top: 2),
                                child: const Text(
                                      'Rebecca SAMA ',
                                      style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black, fontSize: 14),
                                    ),
                              ),
                         
                              
                         ],
                             ),
                             Container(
                             
                              height: MediaQuery.of(context).size.width * .1,
                              padding: const EdgeInsets.all(3),
                               decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 98, 223, 133),
                                borderRadius: BorderRadius.circular(20),
                                
                              ),
                               child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                 children: [
                                   Container(
                                    
                                  padding: const EdgeInsets.symmetric(horizontal: 2),
                                    child: const Icon(Icons.pin_drop),
                                   ),
                                Container(
                                  padding: const EdgeInsets.symmetric(horizontal: 2),
                                  child: const Text("My places", style: TextStyle(fontSize: 12,)),
                                ),
                                Container(
                                  padding: const EdgeInsets.symmetric(horizontal: 2),
                                    child: const Icon(Icons.arrow_drop_down)
                                   ),
                                 ],
                               ),
                             ),
                     ]),
                 ),  
                 Container(
                              height: MediaQuery.of(context).size.width * .2,
                              
                         padding: const EdgeInsets.all(8),
                          
                                child: TextField(
                                  decoration: InputDecoration(
                                    hintText: 'Rechercher...',
                                    hintStyle: const TextStyle(color: Colors.grey, height: 1.5,),
                                    filled: true,
                                    fillColor: Colors.white,
                                    hoverColor:   const Color(0xFF23AA49),
                                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(8), 
                                    ),
                                    suffixIcon: const Icon(Icons.search),
                                    
                                  ),
                                  
                                ),
                           
              
                              ) ,
          ]),
            SingleChildScrollView(
            child: Column(
              children: [
                   SizedBox(
                      height: 150,
                      child: ListView.builder(
                        controller: _scrollController,
                        scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
            itemBuilder: (context, index){
              return Container(
                 
                padding: const EdgeInsets.all(15),
                child: Row(
                  children: [
                  Container(
                      padding: EdgeInsets.zero,
                      
                      child: Image.asset(data[index]["image"])
                      ),
                  Container(
                      decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color(0xFF23AA49),
                      ),
                      child: Column(
                      children: [
                        Expanded(child: 
                        Text(
                                    data[index]["title"],
                                    style: const TextStyle(
                                        color: Colors.black12,
                                        fontSize: 15,
                                        letterSpacing: 2),
                                  ),),
                        Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 2),
                                  child: Text(
                                    data[index]["title2"],
                                    style: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,),
                                  ),),
                           ElevatedButton(
                            // style: TextStyle(backgroundColor: Colors.white,
                            // ),
                                onPressed: () {  },
                                child: Text(
                                                    data[index]["titlebtn"],
                                                    textAlign: TextAlign.center,
                                                    style: const TextStyle(height: 1),
                                                  ),
                              )       
                      ],
                      ),
                  ),
                   
                            
                ],),
              );
            },
            
               ),
                    ),
               Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: const EdgeInsets.only(left: 18),
                    child: const Text("Categories"),
                  ),
                  Container(
                    padding: const EdgeInsets.only(right: 15),
                    child: TextButton(child: const Text("See All"), onPressed: ()=>{},),
                  )
                ],
               ),
             const SizedBox(height: 10,),
              Row(
                children: [
                  Expanded(
                    child: 
                    Column(
                      children: [
                         Image.asset("assets/images/fruit.png"),
                         const Expanded(child: Text("Fruit"))
                      ],
                    ),
                  ),
                   Expanded(
                    child: 
                    Column(
                      children: [
                         Image.asset("assets/images/vegetable.png"),
                         const Expanded(child: Text("Vegetable"))
                      ],
                    ),
                  ),
                   Expanded(
                    child: 
                    Column(
                      children: [
                         Image.asset("assets/images/diary.png"),
                         const Expanded(child: Text("Diary"))
                      ],
                    ),
                  ),
                  Expanded(
                    child: 
                    Column(
                      children: [
                         Image.asset("assets/images/meat.png"),
                         const Expanded(child: Text("Meat"))
                      ],
                    ),
                  ),
                ],
              ),
                 Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: const EdgeInsets.only(left: 18),
                    child: const Text("Best selling"),
                  ),
                  Container(
                    padding: const EdgeInsets.only(right: 15),
                    child: TextButton(child: const Text("See all"), onPressed: ()=>{},),
                  )
                ],
               ),
       
            GridView.builder(
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
            ),)
              ]),
      ),
          ],
        ),
    
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Accueil',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu_sharp, color: Colors.grey,),
            label: 'Menu',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_basket, color: Colors.grey,),
            label: 'Basket',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today, color: Colors.grey,),
            label: 'Note',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person, color: Colors.grey,),
            label: 'Profil',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: const Color(0xFF23AA49),
        onTap: _onItemTapped,
      ),
    );
  }
}