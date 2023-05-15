import 'package:flutter/material.dart';
import 'package:nyrs_projet/composants/button.dart';
import 'package:nyrs_projet/views/payment/payment_item.dart';

class PaymentView extends StatefulWidget {
  const PaymentView({ Key? key }) : super(key: key);

  @override
  State<PaymentView> createState() => _PaymentViewState();
}

class _PaymentViewState extends State<PaymentView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
         appBar: AppBar(
         elevation: 0,
          backgroundColor: Colors.white,
          leading: 
             IconButton(onPressed:() {Navigator.pop(context);}, icon:     Container(
      padding:const EdgeInsets.all(8), 
      decoration: BoxDecoration(
         border: Border.all(
          color: Colors.black12,
              width: 1.0,
         ),
        color: Colors.white,
        shape:BoxShape.circle),
    child:
    const  Icon(Icons.arrow_back_ios, color: Colors.black,),
    )),
        title:const Center(
          child:  SizedBox(
            child:  Text(
              'Checkout',
            style: TextStyle(color: Colors.black),
            ), ),
        ), 
      ),
      backgroundColor: Colors.white,
      body: Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          children:  [
            const PaymentItem(
              image: "assets/images/home.png", 
              title1: "Delivery Address", 
              title2: "Add Address", 
              title: "Home", 
              righticon:  Icon(Icons.arrow_drop_down_sharp), 
              subtitle: "221 Baker St, Marylebone, London NW1...",
              ),
            const PaymentItem(
              image: "assets/images/cartM.png", 
              title1: "Payment", 
              title2: "Add Card", 
              title: "My Card", 
              righticon:  Icon(Icons.arrow_drop_down_sharp), 
              subtitle: "5282 **** **** 8342",
              ),
            const PaymentItem(
                image: "assets/images/momo.png", 
                title1: "Campaigns", 
                title2: "", 
                title: "Nyrs Delivery", 
                righticon:  Icon(Icons.arrow_drop_down_sharp), 
                subtitle: "",
                ),
                   Container(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
               Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(1),
                  child:  const Text("Order Summary",
                      style:
                           TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                ),
               
              ],
            ),
            Container(
      height: 170,
      width: 300,
      decoration:  BoxDecoration(
        borderRadius: BorderRadius.circular(8),
         border: Border.all(
          color: Colors.black12,
              width: 1.0,
         )
        ),
      child: 
      Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                     
                        Container(
                          padding: const EdgeInsets.all(10),
                          child: Column(
                            children: const[
                              Text(
                                "Subtotal",
                                style:  TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                              
                            ],
                          ),
                        ),
                       const Spacer(),
                   Container(
                    padding: const EdgeInsets.all(5),
                    child: const Text("2447F"))
                      ],
                    ),
                      Row(
        mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                 
                    Container(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        children: const[
                          Text(
                            "Discount",
                            style:  TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                          
                        ],
                      ),
                    ),
                   const Spacer(),
               Container(
                padding: const EdgeInsets.all(5),
                child: const Text("80%"))
                  ],
                ),
       Row(
        mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                 
                    Container(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        children: const[
                          Text(
                            "Save",
                            style:  TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                          
                        ],
                      ),
                    ),
                   const Spacer(),
               Container(
                padding: const EdgeInsets.all(5),
                child: const Text("-1800F"))
                  ],
                ),
                const Divider(
                  height: 1,
                  thickness: 1.0,
                  color: Colors.black12,
                ),
                  Row(
        mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                 
                    Container(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        children: const[
                          Text(
                            "Total",
                            style:  TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          
                        ],
                      ),
                    ),
                   const Spacer(),
               Container(
                padding: const EdgeInsets.all(5),
                child: const Text("470F"))
                  ],
                ),
        ],
      ),
      ),
      ],),
    ),
  Column(
       children:const [
          SizedBox(
          child: Text("By placing an order you agree to our"),
          ),
           SizedBox(
          child:  Text("Terms and Conditions", style:  TextStyle(fontWeight: FontWeight.bold),),
          ),
       ],
     ),
      ButtonComponent(title: "Place Order", onPressed: () {  },)
          ],
        ),
      ),
    );
  }
}