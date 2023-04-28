import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({ Key? key }) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
         Row(
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
                          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
                        ),
                      ),
                  
                      const Text(
                        'samarebecca@gmail.com ',
                        style: TextStyle(fontWeight: FontWeight.normal, color: Color.fromARGB(230, 228, 227, 227)),
            ),
               ],
                   ), 
              ]),
              Container(
                        padding: const EdgeInsets.only(right: 150, top: 50),
                      
                        child: const Text(
                          'Rebecca SAMA ',
                          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
                        ),
    
                      ),
        const SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
          ),
        ),
      ],
    );
  }
}