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
   int _selectedIndex = 2;
 

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          
           SliverToBoxAdapter(
            child: Container(
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
          ),
          SliverToBoxAdapter(
            child:Container(
                            height: MediaQuery.of(context).size.width * .2,
                            
                       padding: const EdgeInsets.all(8),
                        
                              child: TextField(
                                decoration: InputDecoration(
                                  hintText: 'Rechercher...',
                                  hintStyle: const TextStyle(color: Colors.grey, height: 1.5,),
                                  filled: true,
                                  fillColor: Colors.white,
                                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(8), 
                                  ),
                                  suffixIcon: const Icon(Icons.search),
                                  
                                ),
                                
                              ),
                         
            
                            ) ,
          ),
          SliverList(
            delegate: SliverChildListDelegate([
      SizedBox(
  height: 135,
  child: ListView.builder(
    controller: _scrollController,
    scrollDirection: Axis.horizontal,
    shrinkWrap: true,
    itemCount: data.length,
    itemBuilder: (context, index) {
      return Container(
        padding: const EdgeInsets.all(8),
        child: ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(15)),
          child: Stack(
            children: [
              Image.asset(
                data[index]["image"],
                width: MediaQuery.of(context).size.width * 0.6,
                height: 119,
                fit: BoxFit.cover,
              ),
              Positioned(
                top: 0,
                right: 0,
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.3,
                  height: 120,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(35),
                      bottomLeft: Radius.circular(35),
                      topRight: Radius.circular(15),
                      bottomRight: Radius.circular(15),
                    ),
                    color: Color(0xFF23AA49),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        padding: const EdgeInsets.only(top: 15),
                        child: Text(
                          data[index]["title"],
                          style: const TextStyle(
                            color: Colors.black45,
                            fontSize: 15,
                            letterSpacing: 2,
                          ),
                        ),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        data[index]["title2"],
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Container(
                        padding: const EdgeInsets.all(2),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: Colors.white,
                        ),
                        width: MediaQuery.of(context).size.width * 0.2,
                        height: 25,
                        child: TextButton(
                          onPressed: () {},
                          child: Text(
                            data[index]["titlebtn"],
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              height: 1,
                              color: Color(0xFF23AA49),
                              fontSize: 10,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    },
  ),
)
,
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
               )
,
        Container(
          padding: const EdgeInsets.all(10),
          height: 150,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.2, 
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset("assets/images/fruit.png"),
                    const SizedBox(height: 5),
                    const Text("Fruit"),
                  ],
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset("assets/images/vegetable.png"),
                    const SizedBox(height: 5),
                    const Text("Vegetable"),
                  ],
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset("assets/images/diary.png"),
                    const SizedBox(height: 5),
                    const Text("Diary"),
                  ],
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset("assets/images/meatC.png"),
                    const SizedBox(height: 5),
                    const Text("Meat"),
                  ],
                ),
              ),
            ],
          ),
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
        Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Container(
                padding: const EdgeInsets.all(10),
                width: 306,
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
            ),
        
           ]),
          ),
        ],
      ),
      bottomNavigationBar:BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Accueil',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu_sharp, ),
            label: 'Menu',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_basket, ),
            label: 'Basket',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today, ),
            label: 'Note',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person, ),
            label: 'Profil',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: const Color(0xFF23AA49),
        unselectedItemColor:  Colors.grey,
        onTap: _onItemTapped,
      ) ,
    );
    
 }
}  

  