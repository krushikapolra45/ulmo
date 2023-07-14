import 'package:flutter/material.dart';
import 'package:ulmo/common_widget/titlename_common.dart';

class GalleryScreen extends StatefulWidget {
  const GalleryScreen({Key? key}) : super(key: key);

  @override
  State<GalleryScreen> createState() => _GalleryScreenState();
}

class _GalleryScreenState extends State<GalleryScreen> {
  List<Map<String, dynamic>> imageList = [
    {"index": "1", "images": "assets/gallery_image/g1.png"},
    {"index": "2", "images": "assets/gallery_image/g2.png"},
    {"index": "3", "images": "assets/gallery_image/g3.png"},
    {"index": "4", "images": "assets/gallery_image/g4.png"},
    {"index": "5", "images": "assets/gallery_image/g5.png"},
    {"index": "6", "images": "assets/gallery_image/g6.png"},
    {"index": "7", "images": "assets/gallery_image/g7.png"},
    {"index": "8", "images": "assets/gallery_image/g8.png"},
    {"index": "9", "images": "assets/gallery_image/g9.png"},
    {"index": "10", "images": "assets/gallery_image/g10.png"},
    {"index": "11", "images": "assets/gallery_image/g11.png"},
    {"index": "12", "images": "assets/gallery_image/g12.png"},
    {"index": "13", "images": "assets/gallery_image/g13.png"},
    {"index": "14", "images": "assets/gallery_image/g14.png"},
    {"index": "15", "images": "assets/gallery_image/g15.png"},
    {"index": "16", "images": "assets/gallery_image/g16.png"},
    {"index": "17", "images": "assets/gallery_image/g17.png"},
    {"index": "18", "images": "assets/gallery_image/g18.png"},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const TitleScreen(
              name: "favorites",
              text: "cancel",
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(right: 5, left: 5),
                child: GridView.builder(
                  shrinkWrap: true,
                  physics: const AlwaysScrollableScrollPhysics(),
                  itemCount: imageList.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    mainAxisSpacing: 5,
                    crossAxisSpacing: 5,
                  ),
                  itemBuilder: (context, index) => Column(
                    children: [
                      Image.asset(
                        imageList[index]["images"],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
