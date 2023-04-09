import 'package:flutter/material.dart';

class CardBoxHeader2 extends StatelessWidget {
  const CardBoxHeader2({
    Key? key,
    required this.text,
    required this.colorBox,
    required this.colorFont,
    required this.font_Size,
    required this.font_weight,
  }) : super(key: key);

  final String text;
  final Color colorBox;
  final Color colorFont;
  final double font_Size;
  final FontWeight font_weight;
  @override
  Widget build(BuildContext context) {
    return
        // Container(
        //   width: double.infinity,
        //   child: Card(
        //margin: EdgeInsets.fromLTRB(5, 5, 5, 0),
        //color: colorBox,
        //child:
        Container(
            margin: EdgeInsets.fromLTRB(10, 0, 5, 0),
            // child: Text(
            //   text,
            //   style: TextStyle(fontSize: 10),
            // ),
            child: Text(text)

            // )
            //     //child: Text("Account Balance"),
            //    ),
            );
  }
}
