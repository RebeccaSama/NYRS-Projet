import 'package:flutter/material.dart';
import 'package:shape_of_view_null_safe/shape_of_view_null_safe.dart';

import 'package:nyrs_projet/views/detail_page/component.dart';
import 'package:nyrs_projet/views/detail_page/detail_item.dart';

import '../../composants/button.dart';

class DetailView extends StatefulWidget {
  final String title;
  final String image;
  final String price;
  final String quantity;
  const DetailView({
    Key? key,
    required this.title,
    required this.image,
    required this.price,
    required this.quantity,
  }) : super(key: key);

  @override
  State<DetailView> createState() => _DetailViewState();
}

class _DetailViewState extends State<DetailView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Stack(
            children: [
              ShapeOfView(
                elevation: 0,
                height: 350,
                width: double.infinity,
                shape: ArcShape(
                    direction: ArcDirection.Outside,
                    height: 40,
                    position: ArcPosition.Bottom),
                child: Container(
                    color: const Color(0XFF23AA49).withOpacity(0.12),
                    child: Center(
                      child: Image.asset(
                        widget.image,
                        height: 150,
                        width: 150,
                      ),
                    )),
              ),
              Positioned(
                  top: 50,
                  left: 20,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      decoration: const BoxDecoration(
                          color: Colors.white, shape: BoxShape.circle),
                      child: const Icon(
                        Icons.arrow_back,
                        size: 16,
                      ),
                    ),
                  )),
              Positioned(
                  top: 50,
                  right: 20,
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    decoration: const BoxDecoration(
                        color: Colors.white, shape: BoxShape.circle),
                    child: const Icon(
                      Icons.search,
                      size: 16,
                    ),
                  ))
            ],
          ),
          Container(
              padding: const EdgeInsets.all(1),
              child: DetailItem(
                  title: widget.title,
                  price: widget.price,
                  quantity: widget.quantity)),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: const Text(
              "Ginger is a flowering plant whose rhizome, ginger root or ginger, is widely used as a spice and a folk medicine.",
              style: TextStyle(fontSize: 12, color: Colors.grey),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  SizedBox(
                    child: Component(
                        image: "assets/images/organic.png",
                        title: "100%",
                        subtitle: "organic"),
                  ),
                  SizedBox(
                    child: Component(
                        image: "assets/images/calender.png",
                        title: "1 Year",
                        subtitle: "Expiration"),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  SizedBox(
                    child: Component(
                        image: "assets/images/best.png",
                        title: "4.8",
                        subtitle: "Review"),
                  ),
                  SizedBox(
                    child: Component(
                        image: "assets/images/lamb.png",
                        title: "80 kcal",
                        subtitle: "100G"),
                  ),
                ],
              ),
            ],
          ),
          ButtonComponent(
            title: "Add to card",
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
