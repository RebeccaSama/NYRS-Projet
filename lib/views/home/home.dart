import 'package:flutter/material.dart';
import 'package:nyrs_projet/views/home/widgets/header.dart';
import 'package:nyrs_projet/views/profile/profilpage.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);
  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    final ScrollController _scrollController = ScrollController();
    List<Map> data = [
      {
        "image": "assets/images/acceuil.png",
        "title": "offers",
        "title2": "Get 25%",
        "titlebtn": "Grab offert"
      },
      {
        "image": "assets/images/acceuil.png",
        "title": "offers",
        "title2": "Get 25%",
        "titlebtn": "Grab offert"
      },
      {
        "image": "assets/images/acceuil.png",
        "title": "offers",
        "title2": "Get 25%",
        "titlebtn": "Grab offert"
      },
      {
        "image": "assets/images/acceuil.png",
        "title": "offers",
        "title2": "Get 25% 25%",
        "titlebtn": "Grab offert"
      },
      {
        "image": "assets/images/acceuil.png",
        "title": "offers",
        "title2": "Get 25%",
        "titlebtn": "Grab offert"
      },
      {
        "image": "assets/images/acceuil.png",
        "title": "offers",
        "title2": "Get 25%",
        "titlebtn": "Grab offert"
      }
    ];
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

    List<String> image = [
      "assets/images/vegetable.png",
      "assets/images/fruit.png",
      "assets/images/vegetable.png",
      "assets/images/diary.png",
      "assets/images/diary.png",
    ];
    List<String> title = ["Fruit", "Vegetable", "Diary", "Meat", "Meat"];

    return Scaffold(
      backgroundColor: Colors.white,
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
          const SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 24),
              child: TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: const Color(0xffF3F5F7),
                  hintText: 'Rechercher',
                  prefixIcon: Icon(
                    Icons.search,
                    color: Color(0xFF23AA49),
                  ),
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.all(20),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                  ),
                ),
                style: TextStyle(fontSize: 16),
              ),
            ),
          ),
          SliverList(
              delegate: SliverChildListDelegate([
            SizedBox(
              height: 200,
              child: ListView.builder(
                controller: _scrollController,
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: data.length,
                itemBuilder: (context, index) {
                  return Container(
                    padding: const EdgeInsets.all(15),
                    child: Row(
                      children: [
                        Container(
                            padding: EdgeInsets.zero,
                            child: Image.asset(data[index]["image"])),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: const BorderRadius.only(
                              topRight: Radius.circular(8),
                              bottomRight: Radius.circular(8),
                            ),
                            color: index % 2 == 0
                                ? const Color(0xFF23AA49)
                                : Color(0xFFFF8181),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(16),
                            child: Column(
                              children: [
                                Expanded(
                                  child: Text(
                                    data[index]["title"],
                                    style: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 15,
                                        letterSpacing: 2),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 2),
                                  child: Text(
                                    data[index]["title2"],
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                    ),
                                  ),
                                ),
                                Container(
                                  padding: const EdgeInsets.all(8),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(30),
                                      color: Colors.white),
                                  child: Text(
                                    data[index]["titlebtn"],
                                    textAlign: TextAlign.center,
                                    style: const TextStyle(height: 1),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: const EdgeInsets.only(left: 18),
                  child: const Text("Categories",
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                ),
                Container(
                  padding: const EdgeInsets.only(right: 15),
                  child: TextButton(
                    child: const Text(
                      "See All",
                      style: TextStyle(color: Color(0xFF23AA49)),
                    ),
                    onPressed: () {},
                  ),
                )
              ],
            ),
            SizedBox(
              height: 120,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: ListView.separated(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(8),
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(0xffF3F5F7)),
                            child: Image.asset(
                              image[index],
                              width: 70,
                              height: 70,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Text(title[index]),
                        ],
                      );
                    },
                    separatorBuilder: (context, __) => const SizedBox(
                          width: 8,
                        ),
                    itemCount: image.length),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: const EdgeInsets.only(left: 18),
                  child: const Text("Best selling",
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                ),
                Container(
                  padding: const EdgeInsets.only(right: 15),
                  child: TextButton(
                    child: const Text(
                      "See all",
                      style: TextStyle(color: Color(0xFF23AA49)),
                    ),
                    onPressed: () => {},
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: GridView.builder(
                itemCount: items.length,
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisSpacing: 12,
                    crossAxisSpacing: 12,
                    crossAxisCount: 2,
                    childAspectRatio: 3 / 3.9),
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    decoration: BoxDecoration(
                        color: Color(0xffF3F5F7),
                        borderRadius: BorderRadius.circular(8)),
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(items[index]["image"]),
                        Text(items[index]["title"]),
                        const SizedBox(
                          height: 8,
                        ),
                        Text(
                            "${items[index]["quantity"] + " " + items[index]["price"]}"),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: Container(
                            padding: EdgeInsets.all(8),
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: const Color(0xFF23AA49),
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
                },
              ),
            ),
            const SizedBox(
              height: 100,
            )
          ])),
        ],
      ),
      floatingActionButton: Stack(
        children: [
          FloatingActionButton(
            backgroundColor: const Color(0xff23AA49),
            child: const Icon(Icons.shopping_cart),
            onPressed: () {
              // Handle floating action button tap
            },
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: Container(
              padding: const EdgeInsets.all(4),
              decoration: const BoxDecoration(
                color: Colors.red,
                shape: BoxShape.circle,
              ),
              child: const Text(
                '9+',
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        child: Container(
          padding: const EdgeInsets.all(8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              IconButton(
                icon: const Icon(Icons.home),
                onPressed: () {
                  // Handle home button tap
                },
              ),
              IconButton(
                icon: const Icon(
                  Icons.dashboard,
                  color: Colors.grey,
                ),
                onPressed: () {
                  // Handle search button tap
                },
              ),
              const SizedBox(width: 48), //
              IconButton(
                icon: const Icon(Icons.description),
                onPressed: () {
                  // Handle search button tap
                },
              ),
              IconButton(
                icon: const Icon(Icons.person),
                onPressed: () {
                  // Handle settings button tap
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
