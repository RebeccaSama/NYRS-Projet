
import 'package:flutter/material.dart';

import '../../class/produit.dart';

// ignore: must_be_immutable
class CoursComponent extends StatelessWidget {
  CoursComponent(
      {required this.domaineI, this.type, this.title = '', this.ontap});
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
              Container(
                height: MediaQuery.of(context).size.height * .110,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: Image.asset(domaineI.imagePath,
                      height: 50, width: 165, fit: BoxFit.cover),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 10, top: 5),
                margin: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width * .0),
                child: Text(domaineI.domainename,
                    style: TextStyle(color: Colors.blue, fontSize: 11)),
              ),
              Container(
                padding: EdgeInsets.only(left: 10),
                margin: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width * .0),
                child: Text(
                  domaineI.name,
                  style: TextStyle(fontSize: 15),
                  maxLines: 1,
                  softWrap: false,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              Container(
                  margin: EdgeInsets.only(top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 7),
                            child: Icon(
                              Icons.timer,
                              size: 14,
                              color: Colors.black54,
                              // onPressed: () {},
                            ),
                          ),
                          
                        ],
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 10, top: 10),
                        margin: EdgeInsets.only(
                            right: MediaQuery.of(context).size.width * .04),
                        child: Text(domaineI.montant,
                            style: TextStyle(color: Colors.blue, fontSize: 11)),
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
