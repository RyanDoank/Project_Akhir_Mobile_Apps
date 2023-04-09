import 'package:flutter/material.dart';

import 'card_box_header2.dart';

class DescSection extends StatelessWidget {
  final String title;
  final Color color1;
  final Color color2;
  // const TitleWidget({super.key});
  const DescSection(this.title,this.color1,this.color2);
   

  @override
  Widget build(BuildContext context) {
    return Flexible(
        flex: 1,
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
            this.color1,
            this.color2
          ])),
          //margin: EdgeInsets.all(5),
          child: Container(
            padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
            child: ListView(
              children: <Widget>[
                CardBoxHeader2(
                  text: "Title",
                  colorBox: Colors.orange,
                  colorFont: Colors.orange,
                  font_Size: 25,
                  font_weight: FontWeight.bold,
                ),
                CardBoxHeader2(
                  text: "subTitle1",
                  colorBox: Colors.green.shade700,
                  colorFont: Colors.white,
                  font_Size: 20,
                  font_weight: FontWeight.normal,
                ),
                CardBoxHeader2(
                  text: "Title2",
                  colorBox: Colors.green.shade700,
                  colorFont: Colors.white,
                  font_Size: 8,
                  font_weight: FontWeight.normal,
                ),
                CardBoxHeader2(
                  text: "subTitle2",
                  colorBox: Colors.green.shade700,
                  colorFont: Colors.white,
                  font_Size: 20,
                  font_weight: FontWeight.normal,
                ),
              ],
            ),
          ),
        ));
  }
}
