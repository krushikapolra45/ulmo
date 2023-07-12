import 'package:flutter/material.dart';
import 'package:ulmo/common_widget/elevated_common.dart';
import 'package:ulmo/common_widget/gridview_common.dart';

import 'reviews_screen.dart';

class ProductPageScreen extends StatefulWidget {
  const ProductPageScreen({Key? key}) : super(key: key);

  @override
  State<ProductPageScreen> createState() => _ProductPageScreenState();
}

class _ProductPageScreenState extends State<ProductPageScreen> {
  List<Map<String, dynamic>> furnitureList = [
    {
      "populerImage": "assets/images/squretable.png",
      "price": "\$140.25",
      "icon": Icons.favorite_border,
      "history": "Square bedside table with\nlegs, a rattan shelf and a...",
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
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Column(
              children: [
                Stack(
                  children: [
                    Image.asset(
                      "assets/images/imgtbl.png",
                      width: double.infinity,
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(15),
                          child: Container(
                            height: 36,
                            width: 36,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: const Icon(
                              Icons.arrow_back,
                              color: Colors.black,
                              size: 20,
                            ),
                          ),
                        ),
                        const Spacer(),
                        Padding(
                          padding: const EdgeInsets.all(15),
                          child: Container(
                            height: 36,
                            width: 36,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: const Icon(
                              Icons.favorite_outline,
                              color: Colors.black,
                              size: 20,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Container(
                  height: 250,
                  width: double.infinity,
                  color: const Color(0xFFF5F5F5),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "\$150.00",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                          ),
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          "Wooden bedside table featuring a raised \ndesign on the door",
                          style: TextStyle(
                            fontSize: 16,
                            color: Color(0xFF9E9E9E),
                            fontFamily: "Poppins",
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            Container(
                              width: 102,
                              height: 36,
                              decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Image.asset(
                                    "assets/images/avatar.png",
                                    width: 18,
                                    height: 18,
                                  ),
                                  const Text(
                                    "brown",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontFamily: "Poppins",
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Container(
                              width: 102,
                              height: 36,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: const Color(0xFFE0E0E0),
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Image.asset(
                                    "assets/images/avatar.png",
                                    width: 18,
                                    height: 18,
                                  ),
                                  const Text(
                                    "black",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontFamily: "Poppins",
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const ElevatedCommon(
                          elevated: "Add to bag",
                          icon: Icons.shopping_bag_outlined,
                          hight: 64,
                          width: 343,
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Container(
                    height: 64,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: const Color(0xFFF5F5F5),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Row(
                        children: [
                          const Text(
                            "%",
                            style: TextStyle(
                              color: Color(0xFF212121),
                              fontWeight: FontWeight.bold,
                              fontSize: 30,
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Discount for you",
                                style: TextStyle(
                                  color: Color(0xFF212121),
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "Poppins",
                                  fontSize: 16,
                                ),
                              ),
                              Text(
                                "Use promocode ULMO",
                                style: TextStyle(
                                  color: Color(0xFF9E9E9E),
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "Poppins",
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(width: 90),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: 70,
                                height: 36,
                                decoration: BoxDecoration(
                                  color: const Color(0xFFFEE440),
                                  borderRadius: BorderRadius.circular(4),
                                ),
                                child: const Align(
                                  alignment: Alignment.center,
                                  child: Text(
                                    "copy",
                                    style: TextStyle(
                                      fontFamily: "Poppins",
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFF212121),
                                      fontSize: 14,
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
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      const Text(
                        "Product information",
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(
                            0xFF212121,
                          ),
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      const Spacer(),
                      IconButton(
                        onPressed: () {
                          showModalBottomSheet(
                            barrierColor: Colors.black,
                            shape: const OutlineInputBorder(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(20),
                              ),
                            ),
                            context: context,
                            builder: (context) {
                              return const Wrap(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.all(12),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        CloseButton(
                                          color: Color(0xFF212121),
                                        ),
                                        SizedBox(height: 20),
                                        Text(
                                          "Product information",
                                          style: TextStyle(
                                            fontSize: 32,
                                            color: Color(0xFF212121),
                                            fontFamily: "Poppins",
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        SizedBox(height: 30),
                                        Text(
                                          "measurements",
                                          style: TextStyle(
                                            fontSize: 24,
                                            color: Color(0xFF212121),
                                            fontFamily: "Poppins",
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                        SizedBox(height: 30),
                                        Row(
                                          children: [
                                            Text(
                                              "Height:",
                                              style: TextStyle(
                                                fontSize: 16,
                                                color: Color(0xFF212121),
                                                fontFamily: "Poppins",
                                              ),
                                            ),
                                            Spacer(),
                                            Text(
                                              "50 cm",
                                              style: TextStyle(
                                                fontSize: 16,
                                                color: Color(0xFF9E9E9E),
                                                fontFamily: "Poppins",
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(height: 30),
                                        Row(
                                          children: [
                                            Text(
                                              "Width:",
                                              style: TextStyle(
                                                fontSize: 16,
                                                color: Color(0xFF212121),
                                                fontFamily: "Poppins",
                                              ),
                                            ),
                                            Spacer(),
                                            Text(
                                              "40 cm",
                                              style: TextStyle(
                                                fontSize: 16,
                                                color: Color(0xFF9E9E9E),
                                                fontFamily: "Poppins",
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(height: 30),
                                        Row(
                                          children: [
                                            Text(
                                              "Depth:",
                                              style: TextStyle(
                                                fontSize: 16,
                                                color: Color(0xFF212121),
                                                fontFamily: "Poppins",
                                              ),
                                            ),
                                            Spacer(),
                                            Text(
                                              "35 cm",
                                              style: TextStyle(
                                                fontSize: 16,
                                                color: Color(0xFF9E9E9E),
                                                fontFamily: "Poppins",
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(height: 30),
                                        Row(
                                          children: [
                                            Text(
                                              "Weight:",
                                              style: TextStyle(
                                                fontSize: 16,
                                                color: Color(0xFF212121),
                                                fontFamily: "Poppins",
                                              ),
                                            ),
                                            Spacer(),
                                            Text(
                                              "11.7 kg",
                                              style: TextStyle(
                                                fontSize: 16,
                                                color: Color(0xFF9E9E9E),
                                                fontFamily: "Poppins",
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(height: 30),
                                        Text(
                                          textAlign: TextAlign.start,
                                          "composition",
                                          style: TextStyle(
                                            fontSize: 24,
                                            color: Color(0xFF212121),
                                            fontFamily: "Poppins",
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        SizedBox(height: 30),
                                        Row(
                                          children: [
                                            Text(
                                              "Main material",
                                              style: TextStyle(
                                                fontSize: 16,
                                                color: Color(0xFF212121),
                                                fontFamily: "Poppins",
                                              ),
                                            ),
                                            Spacer(),
                                            Text(
                                              "100% Mango tree wood",
                                              style: TextStyle(
                                                fontSize: 16,
                                                color: Color(0xFF9E9E9E),
                                                fontFamily: "Poppins",
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(height: 30),
                                        Row(
                                          children: [
                                            Text(
                                              "Weight:",
                                              style: TextStyle(
                                                fontSize: 16,
                                                color: Color(0xFF212121),
                                                fontFamily: "Poppins",
                                              ),
                                            ),
                                            Spacer(),
                                            Text(
                                              "100% Chipboard",
                                              style: TextStyle(
                                                fontSize: 16,
                                                color: Color(0xFF9E9E9E),
                                                fontFamily: "Poppins",
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              );
                            },
                          );
                        },
                        icon: const Icon(
                          Icons.arrow_forward_ios_outlined,
                          color: Color(0xFF212121),
                          size: 24,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const ReviewsScreen(),
                            ),
                          );
                        },
                        child: const Text(
                          "Reviews",
                          style: TextStyle(
                            fontSize: 16,
                            color: Color(
                              0xFF212121,
                            ),
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      const Spacer(),
                      const Text(
                        "32",
                        style: TextStyle(
                          color: Color(0xFF9E9E9E),
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Text(
                        "Questions and answers",
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(
                            0xFF212121,
                          ),
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Spacer(),
                      Text(
                        "5",
                        style: TextStyle(
                          color: Color(0xFF9E9E9E),
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Align(
                    alignment: AlignmentDirectional.topStart,
                    child: Text(
                      "you might also like",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Poppins",
                        color: Color(0xFF212121),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GridView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: furnitureList.length,
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisSpacing: 30,
                        crossAxisSpacing: 20,
                        mainAxisExtent: 290,
                      ),
                      itemBuilder: (context, index) {
                        return GridviewScreen(
                          images: furnitureList[index]["populerImage"],
                          icon: furnitureList[index]["icon"],
                          price: furnitureList[index]["price"],
                          history: furnitureList[index]["history"],
                        );
                      }),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
