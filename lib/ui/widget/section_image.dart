import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:image_network/image_network.dart';
import 'package:cached_network_image/cached_network_image.dart';

class ImageSection extends StatelessWidget {
  final String imagePath;
  const ImageSection(this.imagePath);

  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: EdgeInsets.all(10),
      // width: 200, // This will take 20% of the screen's width
      // height: 300, // This will take 30.5% of the screen's height
      // child: ImageNetwork(
      //   image: imagePath,
      //   imageCache: CachedNetworkImageProvider(
      //       imagePath), //CachedNetworkImageProvider(imageUrl),
      //   height: 50,
      //   width: 50,
      //   duration: 1500,
      //   curve: Curves.easeIn,
      //   onPointer: true,
      //   debugPrint: false,
      //   fullScreen: false,
      //   fitAndroidIos: BoxFit.cover,
      //   fitWeb: BoxFitWeb.cover,
      //   onLoading: const CircularProgressIndicator(
      //     color: Colors.indigoAccent,
      //   ),
      //   onError: const Icon(
      //     Icons.error,
      //     color: Colors.red,
      //   ),
      //   borderRadius: BorderRadius.circular(70),
      //   onTap: () {
      //     showDialog(
      //         context: context,
      //         builder: (_) => const AlertDialog(
      //               content: Text("©gabriealpatricksouza"),
      //             ));
      //     debugPrint(imagePath);
      //   },
      // ),

      //child: Image.network(imagePath, fit: BoxFit.fitHeight),
      //child: Image.network('https://www.kindacode.com/no-image.jpg'),
      child: Image.network(
        imagePath, // this image doesn't exist
        fit: BoxFit.fitHeight,
        // errorBuilder: (context, error, stackTrace) {
        //   return Container(
        //     color: Colors.amber,
        //     alignment: Alignment.center,
        //     child: const Text(
        //       'Whoops!',
        //       style: TextStyle(fontSize: 30),
        //     ),
        //   );
        // },
      ),
    );
  }
}
