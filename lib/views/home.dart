import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({ Key? key }) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
           Container(
            padding: const EdgeInsets.all(10),
             child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [ 
                            Container(
                              padding: const EdgeInsets.only(left: 15,top: 30),
                              child: const CircleAvatar(
                                radius: 25,
                                backgroundImage: AssetImage("assets/images/Ls.png"),
                              ),
                            ),
                         
                       Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                         children:  [
                          Container(
                            padding: const EdgeInsets.only(right: 75, top: 30),
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
                        margin: const EdgeInsets.only(top: 30),
                        padding: const EdgeInsets.all(3),
                         decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                            color: const Color(0xFF23AA49),
                            width: 1,
                          ),
                        ),
                         child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.center,
                           children: [
                             Container(
                              
                            padding: const EdgeInsets.symmetric(horizontal: 2),
                              child: const Icon(Icons.maps_home_work_outlined),
                             ),
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 2),
                            child: const Text("My places", style: TextStyle(fontSize: 12),),
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
                   padding: const EdgeInsets.all(15),
                    
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: 'Rechercher...',
                              hintStyle: const TextStyle(color: Colors.grey, height: 1.5,),
                              filled: true,
                              fillColor: Colors.white,
                              border: OutlineInputBorder(borderRadius: BorderRadius.circular(30), 
                              ),
                              suffixIcon: const Icon(Icons.search),
                              
                            ),
                            
                          ),
                     
    
                        ),
    ]),
      
    );
  }
}