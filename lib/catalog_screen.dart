import 'package:flutter/material.dart';
import 'package:ulmo/common_widget/gridview_common.dart';
import 'package:ulmo/common_widget/textfield_common.dart';
import 'package:ulmo/common_widget/titlename_common.dart';
import 'package:ulmo/filter_screen.dart';
import 'package:ulmo/product_page_screen.dart';

class CatalogScreen extends StatefulWidget {
  const CatalogScreen({Key? key}) : super(key: key);

  @override
  State<CatalogScreen> createState() => _CatalogScreenState();
}

class _CatalogScreenState extends State<CatalogScreen> {
  bool checkBoxValue = false;
  List<Map<String, dynamic>> furnitureList = [
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
      "cardImages": "assets/images/badge.png",
    }
  ];
  List<Map<String, dynamic>> furnitureListTwo = [
    {
      "populerImage": "assets/images/blackchair.png",
      "price": "\$160.00",
      "icon": Icons.favorite_border,
      "history": "Mango wood chair with a woven design",
    },
    {
      "populerImage": "assets/images/twosteptbl.png",
      "price": "\$189.00",
      "icon": Icons.favorite_border,
      "history": "Square bedside table with legs, a rattan shelf and ...  ",
      "cardImages": "assets/images/new.png",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const TitleScreen(
                name: "furniture",
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: TextFieldScreen(
                  name: "search",
                  icon: Icons.search_rounded,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: const MaterialStatePropertyAll(Color(0xFFF5F5F5)),
                        shape: MaterialStatePropertyAll(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        fixedSize: const MaterialStatePropertyAll(
                          Size(164, 36),
                        ),
                      ),
                      onPressed: () {
                        showModalBottomSheet(
                          barrierColor: Colors.black,
                          shape: OutlineInputBorder(
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(20),
                              topLeft: Radius.circular(20),
                            ),
                          ),
                          context: context,
                          builder: (context) {
                            return Wrap(
                              children: [
                                Padding(
                                  padding: EdgeInsets.all(12),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        height: 30,
                                      ),
                                      const Text(
                                        "sort by",
                                        style: TextStyle(
                                          fontSize: 32,
                                          color: Color(0xFF212121),
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      const SizedBox(height: 20),
                                      Row(
                                        children: [
                                          const Text(
                                            "Price: high to low",
                                            style: TextStyle(
                                              fontSize: 16,
                                              color: Color(0xFF212121),
                                            ),
                                          ),
                                          const Spacer(),
                                          Checkbox(
                                            value: checkBoxValue,
                                            checkColor: Color(0xFF212121),
                                            activeColor: Color(0xFFFEE440),
                                            shape: CircleBorder(),
                                            onChanged: (value) {
                                              debugPrint("value---> $value");
                                              setState(() {
                                                checkBoxValue = value!;
                                              });
                                            },
                                          ),
                                        ],
                                      ),
                                      const SizedBox(height: 20),
                                      const Text(
                                        "Price: low to high",
                                        style: TextStyle(
                                          fontSize: 16,
                                          color: Color(0xFF212121),
                                        ),
                                      ),
                                      const SizedBox(height: 30),
                                      const Text(
                                        "New first",
                                        style: TextStyle(
                                          fontSize: 16,
                                          color: Color(0xFF212121),
                                        ),
                                      ),
                                      const SizedBox(height: 30),
                                      const Text(
                                        "Popular first",
                                        style: TextStyle(
                                          fontSize: 16,
                                          color: Color(0xFF212121),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(height: 40),
                                Padding(
                                  padding: const EdgeInsets.all(10),
                                  child: Container(
                                    alignment: Alignment.center,
                                    width: 343,
                                    height: 64,
                                    decoration: BoxDecoration(
                                      color: const Color(0xFFF5F5F5),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: const Text(
                                      textAlign: TextAlign.center,
                                      "cancel",
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Color(0xFF212121),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                              ],
                            );
                          },
                        );
                      },
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "sort",
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Icon(
                            Icons.swap_vert,
                            color: Colors.black,
                            size: 20,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: const MaterialStatePropertyAll(Color(0xFFF5F5F5)),
                        shape: MaterialStatePropertyAll(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        fixedSize: const MaterialStatePropertyAll(
                          Size(164, 36),
                        ),
                      ),
                      onPressed: () {},
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const FilterScreen(),
                            ),
                          );
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              "filter",
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            Image.asset(
                              "assets/images/filtertwo.png",
                              height: 17,
                              width: 17,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ProductPageScreen(),
                      ),
                    );
                  },
                  child: GridView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: furnitureList.length,
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisSpacing: 25,
                        crossAxisSpacing: 20,
                        mainAxisExtent: 280,
                      ),
                      itemBuilder: (context, index) {
                        return GridviewScreen(
                          images: furnitureList[index]["populerImage"],
                          icon: furnitureList[index]["icon"],
                          price: furnitureList[index]["price"],
                          history: furnitureList[index]["history"],
                          cardImages: furnitureList[index]["cardImages"],
                          isCardImages: index == 0 || index == 3,
                        );
                      }),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Container(
                        height: 64,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: const Color(0xFFF5F5F5),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Row(
                            children: [
                              const Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Hard to decide?",
                                    style: TextStyle(
                                      color: Color(0xFF212121),
                                      fontWeight: FontWeight.w400,
                                      fontFamily: "poppins",
                                      fontSize: 16,
                                    ),
                                  ),
                                  Text(
                                    "We are ready for help",
                                    style: TextStyle(
                                      color: Color(0xFF9E9E9E),
                                      fontWeight: FontWeight.w400,
                                      fontFamily: "poppins",
                                      fontSize: 14,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                width: 100,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 104,
                                    height: 36,
                                    decoration: BoxDecoration(
                                      color: const Color(0xFFFEE440),
                                      borderRadius: BorderRadius.circular(4),
                                    ),
                                    child: const Align(
                                      alignment: Alignment.center,
                                      child: Text(
                                        "Need help",
                                        style: TextStyle(
                                          fontFamily: "poppins",
                                          fontWeight: FontWeight.normal,
                                          color: Color(0xFF212121),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15),
                child: GridView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: furnitureListTwo.length,
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 25,
                      crossAxisSpacing: 20,
                      mainAxisExtent: 280,
                    ),
                    itemBuilder: (context, index) {
                      return GridviewScreen(
                        images: furnitureListTwo[index]["populerImage"],
                        icon: furnitureListTwo[index]["icon"],
                        price: furnitureListTwo[index]["price"],
                        history: furnitureListTwo[index]["history"],
                        cardImages: furnitureListTwo[index]["cardImages"],
                        isCardImages: index == 1,
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
