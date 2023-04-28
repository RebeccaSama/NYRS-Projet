import 'package:flutter/material.dart';
import 'package:nyrs_projet/views/home.dart';

class ErrorView extends StatelessWidget {
  const ErrorView({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
       
    body:  Column(mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
        children: [
              Center(
                child: Container(
                  padding:  const EdgeInsets.only(top: 40,),
                  child: Image.asset('assets/images/fail.png', height: MediaQuery.of(context).size.height * .2, fit: BoxFit.cover,),),
              ),
                  Container(
            padding: const EdgeInsets.only(top: 30, bottom: 20
            ),
            child: const Text(
              "Your cart is empty",
               style: TextStyle(fontSize: 20,),
               textAlign: TextAlign.center,
               ),
          ),
          Container(
            padding: const EdgeInsets.only(left:40, right: 40, bottom: 20),
            child: const Text(
              " on dirait que tu n'as pas encore faire ton choix... !",
               style: TextStyle(fontSize: 16, color: Color.fromARGB(115, 116, 107, 107)),
               textAlign: TextAlign.center,
               ),
          ),
          Container(
            padding: const EdgeInsets.all(5),
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(const Color(0xFF23AA49)),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
      RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),)), 
              onPressed: () {Navigator.push(context,MaterialPageRoute(builder: (context) => const HomeView())); 
              }, child: const Text("Try Again"),),
          ), TextButton (onPressed: () {  Navigator.push(context, MaterialPageRoute(builder: (context)=> const HomeView()));},
          child: const Text("Back Home",),
          )
          ]));
  }
}