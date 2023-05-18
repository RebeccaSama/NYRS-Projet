// ignore_for_file: must_be_immutable, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:nyrs_projet/class/produit.dart';

class CartComponent extends StatelessWidget {
  CartComponent(
      {Key? key, required this.domaineI, this.type, this.title = '', this.ontap}) : super(key: key);
  var ontap;
  var title;
  var type;
  Produits domaineI;
  @override
  Widget build(BuildContext context) {
    return InkWell(
        child: Container(
          width: MediaQuery.of(context).size.height * .28,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.blue[50],
              boxShadow: [
                BoxShadow(
                    offset: const Offset(0, 1),
                    blurRadius: 10,
                    color: Colors.black.withOpacity(0.3))
              ]),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * .110,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: Image.asset(domaineI.imagePath,
                      height: 50, width: 165, fit: BoxFit.cover),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(left: 10, top: 5),
                margin: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width * .0),
                child: Text(domaineI.domainename,
                    style: const TextStyle(color: Colors.blue, fontSize: 11)),
              ),
              Container(
                padding: const EdgeInsets.only(left: 10),
                margin: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width * .0),
                child: Text(
                  domaineI.name,
                  style: const TextStyle(fontSize: 15),
                  maxLines: 1,
                  softWrap: false,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              Container(
                  margin: const EdgeInsets.only(top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            margin: const EdgeInsets.only(left: 7),
                            child: const Icon(
                              Icons.timer,
                              size: 14,
                              color: Colors.black54,
                              // onPressed: () {},
                            ),
                          ),
                          
                        ],
                      ),
                      Container(
                        padding: const EdgeInsets.only(left: 10, top: 10),
                        margin: EdgeInsets.only(
                            right: MediaQuery.of(context).size.width * .04),
                        child: Text(domaineI.montant,
                            style: const TextStyle(color: Colors.blue, fontSize: 11)),
                      ),
                    ],
                  )),
            ],
          ),
        ),
        onTap: ontap

        /*  onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => PaymentV(),
              )); // Navigate to second route when tapped.
        } */
        );
  }
}
