// ignore: duplicate_ignore
// ignore: file_names
// ignore_for_file: file_names

import 'package:flutter/material.dart';

class  CardItem extends StatelessWidget {
    final String image;
    final bool visible ;
  final String title;
  final String quantity;
  final String price;
  const CardItem(
      {Key? key,
      required this.image,
      required this.visible,
      required this.title,
      required this.quantity,
      required this.price})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  ListTile(
                leading: Visibility(
                  visible: visible,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Image.asset(
                      image,
                      height: 80,
                      width: 80,
                    ),
                  ),
                ),
                title: Row(
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
                    // Container(
                    //   padding: const EdgeInsets.all(6),
                    //   decoration: const BoxDecoration(
                    //     shape: BoxShape.circle,
                    //   ),
                    //   child: const Icon(
                    //     Icons.remove_circle,
                    //     color: Colors.grey,
                    //   ),
                    // ),
                    Container(
                      padding: const EdgeInsets.all(5),
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color.fromARGB(255, 217, 219, 221),
                      ),
                      child: const Icon(
                        Icons.remove_circle,
                        color: Color(0xff979899),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(5),
                      child: const Text("5"),
                    ),
                    Container(
                      padding: const EdgeInsets.all(6),
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xFF23AA49),
                      ),
                      child: const Icon(
                        Icons.add,
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
    ;
  }
}