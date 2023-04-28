import 'package:flutter/material.dart';
import 'package:nyrs_projet/views/empty_error_succes/error.dart';

class SuccesView extends StatelessWidget {
  const SuccesView({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        
    body: SingleChildScrollView(
       child: Column(mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
        children: [
              Container(
                padding:  const EdgeInsets.only(top: 200,),
                child: Image.asset('assets/images/succes.png', height: MediaQuery.of(context).size.height * .2, fit: BoxFit.cover,),),
                  Container(
            padding: const EdgeInsets.only(top: 20, bottom: 30
            ),
            child: const Text(
              "Votre commande a ete acceptee",
               style: TextStyle(fontSize: 20,),
               textAlign: TextAlign.center,
               ),
          ),
          Container(
            padding: const EdgeInsets.only(left:40, right: 40, bottom: 60),
            child: const Text(
              " nous avons accete votre commande et nous l'avons deja recu... !",
               style: TextStyle(fontSize: 16,color: Color.fromARGB(115, 134, 122, 122)),
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
              onPressed: () {Navigator.push(context,MaterialPageRoute(builder: (context) => const ErrorView())); 
              }, child: const Text("Back Home"),),
          )
          ])));
  }
}