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
            height: MediaQuery.of(context).size.height * 0.2,
            width: double.infinity,
            child:  Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [ 
                        Container(
                          padding: const EdgeInsets.only(left: 20,top: 30),
                          child: const CircleAvatar(
                            radius: 35,
                            backgroundImage: AssetImage("assets/images/Ls.png"),
                          ),
                        ),
                     
                   Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                     children:  [
                      Container(
                        padding: const EdgeInsets.only(right: 150, top: 50),
                        child: const Text(
                          'Rebecca SAMA ',
                          style:  TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
                        ),
                      ),
                  
                      const Text(
                        'samarebecca@gmail.com ',
                        style:  TextStyle(fontWeight: FontWeight.normal, color: Color.fromARGB(230, 228, 227, 227)),
            ),
               ],
                   ), 
              ]),),
               Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                     children: [
                       Container(
                                padding: const EdgeInsets.only(left: 20 , top: 30),
                                child: const Text(
                                  'Adresse',
                                  style: TextStyle(fontWeight: FontWeight.normal, color: Colors.black, fontSize: 20),
                                ),
                              ),
                                 Container(
                                  padding: const EdgeInsets.only(right: 30, top: 30),
                                  child: const Icon(Icons.navigate_next_sharp))
                              
                     ],
                   ),
                    Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                     children: [
                       Container(
                                padding: const EdgeInsets.only(left: 20 , top: 30),
                                child: const Text(
                                  'Panier',
                                  style:  TextStyle(fontWeight: FontWeight.normal, color: Colors.black, fontSize: 20),
                                ),
                              ),
                                 Container(
                                  padding: const EdgeInsets.only(right: 30, top: 30),
                                  child: const Icon(Icons.navigate_next_sharp))
                              
                     ],
                   ),
                    Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                     children: [
                       Container(
                                padding: const EdgeInsets.only(left: 20 , top: 30),
                                child: const Text(
                                  'Modifier',
                                  style:  TextStyle(fontWeight: FontWeight.normal, color: Colors.black, fontSize: 20),
                                ),
                              ),
                                 Container(
                                  padding: const EdgeInsets.only(right: 30, top: 30),
                                  child: const Icon(Icons.navigate_next_sharp))
                     ],
                   ),
                    Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                     children: [
                       Container(
                                padding: const EdgeInsets.only(left: 20 , top: 30),
                                child: const Text(
                                  'Deconnexion',
                                  style:  TextStyle(fontWeight: FontWeight.normal, color: Colors.black, fontSize: 20),
                                ),
                              ),
                                 Container(
                                  padding: const EdgeInsets.only(right: 30, top: 30),
                                  child: const Icon(Icons.navigate_next_sharp))
                              
                     ],
                   ),
                 ],
               ),
    ])
    );
  }
}
