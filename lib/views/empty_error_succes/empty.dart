import 'package:flutter/material.dart';
import 'package:nyrs_projet/views/empty_error_succes/succes.dart';

class EmptyBasket extends StatelessWidget {
  const EmptyBasket({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
         appBar: AppBar(
          backgroundColor: const Color(0xFF23AA49),
          leading: 
             IconButton(onPressed:() {Navigator.pop(context);}, icon: const Icon(Icons.arrow_back_ios_new)),
        elevation: 5,
          title: const Text(
                    'Cart', 
                    style: TextStyle(color: Colors.white,),
                  ), 
                ),
          
    body: SingleChildScrollView(
       child: Column(mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
        children: [
              Container(
                padding:  const EdgeInsets.only(top: 80,),
                child: Image.asset('assets/images/panier.png', height: MediaQuery.of(context).size.height * .2, fit: BoxFit.cover,),),
                  Container(
            padding: const EdgeInsets.only(top: 20, bottom: 30
            ),
            child: const Text(
              "Your cart is empty",
               style: TextStyle(fontSize: 20,),
               textAlign: TextAlign.center,
               ),
          ),
          Container(
            padding: const EdgeInsets.only(left:40, right: 40, bottom: 60),
            child: const Text(
              " on dirait que tu n'as pas encore faire ton choix... !",
               style: TextStyle(fontSize: 16,color: Color.fromARGB(136, 77, 71, 71)),
               textAlign: TextAlign.center,
               ),
          ),
          Padding(
            
            padding: const EdgeInsets.all(5),
            child: ElevatedButton(
                 style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(const Color(0xFF23AA49)),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
      RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),)),
              onPressed: () {Navigator.push(context,MaterialPageRoute(builder: (context) => const SuccesView())); 
              }, child: const Text("Start Shopping"),),
          )
          ])));
  }
}