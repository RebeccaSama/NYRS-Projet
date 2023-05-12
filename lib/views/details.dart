import 'package:flutter/material.dart';

class DetailView extends StatefulWidget {
  const DetailView({ Key? key }) : super(key: key);

  @override
  State<DetailView> createState() => _DetailViewState();
}

class _DetailViewState extends State<DetailView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
          children: [
            Container(
              decoration: const BoxDecoration(
                color: Colors.grey,
                borderRadius:  BorderRadius.only(bottomLeft: Radius.circular(15), bottomRight:  Radius.circular(15))
              )),
             SingleChildScrollView(
             child:   Row(
               crossAxisAlignment: CrossAxisAlignment.center,
               children: [
                Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.only(right: 10),
                      child: const Text("Arabic Ginger"),
                    ),
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.zero,
                          child: const Text("1kg"),
                        ),
                        const Expanded(child:  Text("400FCFA"))
                      ],
                    )
                  ],
                )
               ],
              ),
              
            ),
          ],
        )
    );
  }
}