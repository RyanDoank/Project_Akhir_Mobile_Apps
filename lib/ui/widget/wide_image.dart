import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:image_network/image_network.dart';
import 'package:cached_network_image/cached_network_image.dart';

class WideImage extends StatelessWidget {
  final String wideimage;
  const WideImage(this.wideimage);

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: 20.w, // This will take 20% of the screen's width
      // height: 30.h, // This will take 30.5% of the screen's height

      child: Image.network(
        "https://image.tmdb.org/t/p/original/" + wideimage,
        fit: BoxFit.fitWidth,
      ),
    );
  }
}
