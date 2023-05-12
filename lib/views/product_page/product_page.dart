import 'package:flutter/material.dart';

import '../home/product_item.dart';
import '../home/widgets/header.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({
    Key? key,
  }) : super(key: key);

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  List<Map> items = [
    {
      "image": "assets/images/perper.png",
      "title": "Bell Pepper Red",
      "price": "500FCFA",
      "quantity": "1kg"
    },
    {
      "image": "assets/images/meat.png",
      "title": "Lamb meat",
      "price": "3000FCFA",
      "quantity": "1kg"
    },
    {
      "image": "assets/images/perper.png",
      "title": "Bell Pepper Red",
      "price": "500FCFA",
      "quantity": "1kg"
    },
    {
      "image": "assets/images/meat.png",
      "title": "Lamb meat",
      "price": "3000FCFA",
      "quantity": "1kg"
    },
    {
      "image": "assets/images/perper.png",
      "title": "Bell Pepper Red",
      "price": "500FCFA",
      "quantity": "1kg"
    },
    {
      "image": "assets/images/meat.png",
      "title": "Lamb meat",
      "price": "3000FCFA",
      "quantity": "1kg"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          const SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.only(
                top: 50,
                left: 16,
                right: 16,
              ),
              child: Header(),
            ),
          ),
          SliverList(
              delegate: SliverChildListDelegate([
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                            width: 1, color: Colors.black.withOpacity(0.12))),
                    child: const Icon(Icons.chevron_left),
                  ),
                  const Text("Vegetables",
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                  Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                            width: 1, color: Colors.black.withOpacity(0.12))),
                    child: const Icon(Icons.search),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: GridView.builder(
                itemCount: items.length,
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisSpacing: 12,
                    crossAxisSpacing: 12,
                    crossAxisCount: 2,
                    childAspectRatio: 3 / 4),
                itemBuilder: (BuildContext context, int index) {
                  return ProductItems(
                    image: items[index]["image"],
                    price: items[index]["title"],
                    quantity: items[index]["quantity"],
                    title: items[index]["price"],
                  );
                },
              ),
            )
          ])),
        ],
      ),
    );
  }
}