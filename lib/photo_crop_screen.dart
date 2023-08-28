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
      backgroundColor: const Color(0xFF212121),
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
                      color: const Color(0xB3FFFFFF),
                    ),
                    child: BackButton(
                      color: const Color(0xFF212121),
                      onPressed: () {},
                    ),
                  ),
                  const Spacer(),
                  Container(
                    height: 36,
                    width: 36,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: const Color(0xB3FFFFFF),
                    ),
                    child: const Icon(
                      Icons.done,
                      color: Color(0xFF212121),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
