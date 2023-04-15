import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class TitleSection extends StatelessWidget {
  final String title;

  // const TitleWidget({super.key});
  const TitleSection(this.title);

  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: EdgeInsets.fromLTRB(5, 5, 5, 0),
      // color: Colors.red,
      child:
          // AutoSizeText(
          //   title,
          //   maxFontSize: 35,
          //   minFontSize: 20,
          //   // style: TextStyle(color: colorFont, fontWeight: FontWeight.bold),
          //   maxLines: 3,
          // ),
          Text(
        // overflow: TextOverflow.ellipsis,
        title,
        style: TextStyle(
          fontSize: 20,
        ),
      ),
    );
  }
}
