import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ImageSection extends StatelessWidget {
  final String imagePath;
  const ImageSection(this.imagePath);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Adaptive.w(30), // This will take 20% of the screen's width
      height: 35.5.h, // This will take 30.5% of the screen's height
      child: Image.network(imagePath, fit: BoxFit.fitHeight),
    );
  }
}
