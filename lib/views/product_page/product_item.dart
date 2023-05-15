import 'package:flutter/material.dart';

class ProductItems extends StatelessWidget {
  final String image;
  final String title;
  final String quantity;
  final String price;
  const ProductItems(
      {Key? key,
      required this.image,
      required this.title,
      required this.quantity,
      required this.price})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: const Color(0xffF3F5F7),
          borderRadius: BorderRadius.circular(8)),
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(image),
          Text(title),
          const SizedBox(
            height: 4,
          ),
          Text("$quantity " "  $price"),
          const SizedBox(
            height: 8,
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Container(
              padding: const EdgeInsets.all(8),
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xFF23AA49),
              ),
              child: const Icon(
                Icons.add,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
