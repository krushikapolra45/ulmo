import 'package:cropperx/cropperx.dart';
import 'package:flutter/material.dart';

class PhotoCropScreen extends StatefulWidget {

  const PhotoCropScreen({Key? key}) : super(key: key);

  @override
  State<PhotoCropScreen> createState() => _PhotoCropScreenState();
}

class _PhotoCropScreenState extends State<PhotoCropScreen> {
  final _cropperKey = GlobalKey(debugLabel: 'cropperKey');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF212121),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(15),
              child: Row(
                children: [
                  Container(
                    height: 36,
                    width: 36,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Color(0xB3FFFFFF),
                    ),
                    child: BackButton(
                      color: Color(0xFF212121),
                      onPressed: () {},
                    ),
                  ),
                  Spacer(),
                  Container(
                    height: 36,
                    width: 36,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Color(0xB3FFFFFF),
                    ),
                    child: Icon(
                      Icons.done,
                      color: Color(0xFF212121),
                    ),
                  ),
                ],
              ),
            ),



    Cropper(
      cropperKey: _cropperKey,
      image: Image.network(
        'https://i.pinimg.com/originals/6b/4d/18/6b4d18c0b756ab20c3591490dfc10090.jpg',
      ),
    ),


    final imageBytes = await Cropper.crop(
      cropperKey: _cropperKey,
    ),
          ],
        ),
      ),
    );
  }
}
