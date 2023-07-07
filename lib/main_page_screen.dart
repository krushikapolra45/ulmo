import 'package:flutter/material.dart';
import 'package:ulmo/categories_screen.dart';
import 'package:ulmo/common_widget/gridview_common.dart';
import 'package:ulmo/common_widget/item_common.dart';

import 'search_screen.dart';
import 'story_screen.dart';

class MainPageScreen extends StatefulWidget {
  const MainPageScreen({Key? key}) : super(key: key);

  @override
  State<MainPageScreen> createState() => _MainPageScreenState();
}

class _MainPageScreenState extends State<MainPageScreen> {
  List<Map<String, dynamic>> searchList = [
    {
      "serchText": "badRoom",
      "image": "assets/images/bed.png",
    },
    {
      "serchText": "living room",
      "image": "assets/images/room.png",
    },
    {
      "serchText": "kitchen",
      "image": "assets/images/kitchenpic.png",
    },
    {
      "serchText": "dining",
      "image": "assets/images/dining.png",
    },
    {
      "serchText": "bathroom",
      "image": "assets/images/bathroom.png",
    },
  ];

  List<Map<String, dynamic>> populerList = [
    {
      "populerImage": "assets/images/woodtblroom.png",
      "price": "\$150.00",
      "icon": Icons.favorite,
      "history": "Wooden bedside\ntable featuring a raised desi...",
      "cardImages": "assets/images/new.png",
    },
    {
      "populerImage": "assets/images/chair.png",
      "price": "\$149.99",
      "icon": Icons.favorite_border,
      "history": "Chair made of ash wood\nsourced from responsib...",
    },
    {
      "populerImage": "assets/images/squretable.png",
      "price": "\$140.25",
      "icon": Icons.favorite_border,
      "history": "Square bedside table\nwith legs, a rattan shelf and a...",
    },
    {
      "populerImage": "assets/images/tvtable.png",
      "price": "\$450.00",
      "icon": Icons.favorite_border,
      "history": "Dark wood side board\nwith a faceted drawer",
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Text(
                "ulmo",
                style: TextStyle(
                  fontSize: 32,
                  fontFamily: "poppins",
                  fontWeight: FontWeight.w600,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SearchScreen(),
                      ),
                    );
                  },
                  child: Container(
                    width: double.infinity,
                    height: 64,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: const Color(0xFFF5F5F5),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Icon(Icons.search_rounded, color: Color(0xFF9E9E9E), size: 20),
                          SizedBox(width: 10),
                          Text(
                            "search",
                            style: TextStyle(color: Color(0xFF9E9E9E), fontSize: 16),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.only(left: 3),
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const StoryScreen(),
                            ),
                          );
                        },
                        child: const ItemScreen(
                          image: "assets/images/tablepic.png",
                          name: "best of\n2020",
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      const ItemScreen(
                        image: "assets/images/golden.png",
                        name: "the golden\nhour",
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      const ItemScreen(
                        image: "assets/images/kitchen.png",
                        name: "lovely \nkitchen",
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      const ItemScreen(
                        image: "assets/images/summer.png",
                        name: "summer\nchoice",
                      ),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const CategoriesScreen(),
                    ),
                  );
                },
                child: SizedBox(
                  child: ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    itemCount: searchList.length,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: const Color(0xFFF5F5F5),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        width: 343,
                        height: 100,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 8, bottom: 25),
                              child: Text(
                                searchList[index]["serchText"],
                                style: const TextStyle(
                                  fontSize: 24,
                                  fontFamily: "poppins",
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            ClipRRect(
                              borderRadius: const BorderRadius.only(
                                topRight: Radius.circular(8),
                                bottomRight: Radius.circular(8),
                              ),
                              clipBehavior: Clip.antiAlias,
                              child: Image.asset(
                                searchList[index]["image"],
                                height: 100,
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "popular",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: GridView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: populerList.length,
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 30,
                      crossAxisSpacing: 20,
                      mainAxisExtent: 280,
                    ),
                    itemBuilder: (context, index) {
                      return GridviewScreen(
                        images: populerList[index]["populerImage"],
                        icon: populerList[index]["icon"],
                        price: populerList[index]["price"],
                        history: populerList[index]["history"],
                        cardImages: populerList[index]["cardImages"],
                        isCardImages: index == 0,
                      );
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
