import 'package:flutter/material.dart';
import 'package:ulmo/common_widget/titlename_common.dart';

class GalleryScreen extends StatefulWidget {
  const GalleryScreen({Key? key}) : super(key: key);

  @override
  State<GalleryScreen> createState() => _GalleryScreenState();
}

class _GalleryScreenState extends State<GalleryScreen> {
  List<Map<String, dynamic>> imageList = [
    {"galleryImage": "assets/gallery_image/g1.png"},
    {"galleryImage": "assets/gallery_image/g2.png"},
    {"galleryImage": "assets/gallery_image/g3.png"},
    {"galleryImage": "assets/gallery_image/g4.png"},
    {"galleryImage": "assets/gallery_image/g5.png"},
    {"galleryImage": "assets/gallery_image/g6.png"},
    {"galleryImage": "assets/gallery_image/g7.png"},
    {"galleryImage": "assets/gallery_image/g8.png"},
    {"galleryImage": "assets/gallery_image/g9.png"},
    {"galleryImage": "assets/gallery_image/g10.png"},
    {"galleryImage": "assets/gallery_image/g11.png"},
    {"galleryImage": "assets/gallery_image/g12.png"},
    {"galleryImage": "assets/gallery_image/g13.png"},
    {"galleryImage": "assets/gallery_image/g14.png"},
    {"galleryImage": "assets/gallery_image/g15.png"},
    {"galleryImage": "assets/gallery_image/g16.png"},
    {"galleryImage": "assets/gallery_image/g17.png"},
    {"galleryImage": "assets/gallery_image/g18.png"},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            TitleScreen(
              name: "favorites",
              text: "cancel",
            ),
            GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
              ),
              itemBuilder: (context, index) {
                return GalleryScreen();
              },
            ),
          ],
        ),
      ),
    );
  }
}
