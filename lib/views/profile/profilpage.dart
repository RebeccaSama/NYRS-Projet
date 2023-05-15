import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         elevation: 0,
          backgroundColor: Colors.white,
          leading: 
             IconButton(onPressed:() {Navigator.pop(context);}, icon: const Icon(Icons.arrow_back_ios_new),color: Colors.black,),
        title: const SizedBox(child:  Text('Profile',style: TextStyle(color: Colors.black),), ), 
      ),
      body: Column(
        children: [
          Container(
            decoration: const BoxDecoration(color:  Color(0xFF23AA49)),
            padding: EdgeInsets.zero,
            height: MediaQuery.of(context).size.height * 0.1,
            width: double.infinity,
            child:  Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [ 
                        Container(
                          padding: const EdgeInsets.only(left: 20),
                          child: const CircleAvatar(
                            radius: 30,
                            backgroundImage: AssetImage("assets/images/Ls.png"),
                          ),
                        ),
                     
                   Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                     children:  [
                      Container(
                        padding: const EdgeInsets.only( left: 10),
                        child: const Text(
                          'Rebecca SAMA ',
                          style:  TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
                        ),
                      ),
                  
                       Container(
                        padding: const EdgeInsets.only( left: 10),
                         child: const Text(
                          'samarebecca@gmail.com ',
                          style:  TextStyle(fontWeight: FontWeight.normal, color: Color.fromARGB(230, 228, 227, 227)),
            ),
                       ),
               ],
                   ), 
              ]),),
               const SizedBox(height: 15,),
               Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                     children: [
                      Container(
                                  padding: const EdgeInsets.only(left: 20 , right: 8,  top: 30),
                                  child: const Icon(Icons.location_city, color: Color(0xFF23AA49),)),
                       Container(                        
                                padding: const EdgeInsets.only(top: 30),
                                child: const Text(
                                  'Adress',
                                  style: TextStyle(fontWeight: FontWeight.normal, color: Colors.black, fontSize: 20),
                                ),
                              ),
                                 
                              
                     ],
                   ),
                    Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                     children: [
                      Container(
                                  padding: const EdgeInsets.only(left: 20 ,  right: 8, top: 30),
                                  child: const Icon(Icons.shopping_basket, color: Color(0xFF23AA49),)),
                       Container(
                                padding: const EdgeInsets.only(top: 30),
                                child: const Text(
                                  'Basket Shopping',
                                  style:  TextStyle(fontWeight: FontWeight.normal, color: Colors.black, fontSize: 20),
                                ),
                              ),
                                
                              
                     ],
                   ),
                    Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                     children: [
                       Container(
                                  padding: const EdgeInsets.only(right: 8,left: 20 ,  top: 30),
                                  child: const Icon(Icons.edit, color: Color(0xFF23AA49),)),
                       Container(
                                padding: const EdgeInsets.only( top: 30),
                                child: const Text(
                                  'Edit',
                                  style:  TextStyle(fontWeight: FontWeight.normal, color: Colors.black, fontSize: 20),
                                ),
                              ),
                                
                     ],
                   ),
                    Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                     children: [
                      Container(
                                  padding: const EdgeInsets.only(right: 8,left: 20 , top: 30),
                                  child: const Icon(Icons.logout_outlined, color: Color(0xFF23AA49),)),
                       Container(
                                padding: const EdgeInsets.only( top: 30),
                                child: const Text(
                                  'Log out',
                                  style:  TextStyle(fontWeight: FontWeight.normal, color: Colors.black, fontSize: 20),
                                ),
                              ),
                                 
                     ],
                   ),
                 ],
               ),
    ])
    );
  }
}