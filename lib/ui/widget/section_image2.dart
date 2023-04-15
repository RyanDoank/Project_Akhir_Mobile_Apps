import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:image_network/image_network.dart';
import 'package:cached_network_image/cached_network_image.dart';

class ImageSection2 extends StatelessWidget {
  final String imagePath;
  const ImageSection2(this.imagePath);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
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
        "https://image.tmdb.org/t/p/original/" +
            imagePath, // this image doesn't exist
        fit: BoxFit.fitHeight,
        width: 150,
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
