// ignore: duplicate_ignore
// ignore: file_names
// ignore_for_file: file_names

import 'package:flutter/material.dart';

class  DetailItem extends StatelessWidget {
  final String title;
  final String quantity;
  final String price;
  const DetailItem(
      {Key? key,
      required this.title,
      required this.quantity,
      required this.price})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  ListTile(
               
                title: 
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      title,
                      textAlign: TextAlign.start,
                      style: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Spacer(),
                    Container(
                      padding: const EdgeInsets.all(4),
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color.fromARGB(255, 217, 219, 221),
                      ),
                      child: const Icon(
                        Icons.remove_circle,
                        size: 16,
                        color: Color(0xff979899),
                      ),
                    ),
                  const  Padding(
                      padding:  EdgeInsets.all(4.0),
                      child:  Text("5"),
                    ),
                    Container(
                      padding: const EdgeInsets.all(4),
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xFF23AA49),
                      ),
                      child: const Icon(
                        Icons.add,
                        size: 16,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                subtitle: Text(
                  "$quantity  "  " $price",
                  style: const TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                      fontSize: 12),
                ),
              );
    
  }
}