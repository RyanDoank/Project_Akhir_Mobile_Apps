import 'package:flutter/material.dart';

import 'card_box.dart';

class DescSection extends StatelessWidget {
  final String title, releasedate, language, voteaverage;
  const DescSection({
    required this.title,
    required this.releasedate,
    required this.language,
    required this.voteaverage,
  });

  @override
  Widget build(BuildContext context) {
    return Flexible(
        flex: 1,
        child: Container(
          decoration: BoxDecoration(
              // gradient: LinearGradient(
              //   colors: [this.color1, this.color2],
              // ),
              ),
          //margin: EdgeInsets.all(5),
          child: Container(
            padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
            child: ListView(
              children: <Widget>[
                CardBox(
                  textHeader: "Title",
                  textDetail: title,
                  colorBox: Colors.grey,
                  colorFont: Colors.white,
                  font_Size: 25,
                  font_weight: FontWeight.bold,
                ),
                CardBox(
                  textHeader: "language",
                  textDetail: language,
                  colorBox: Colors.grey,
                  colorFont: Colors.white,
                  font_Size: 25,
                  font_weight: FontWeight.bold,
                ),
                CardBox(
                  textHeader: "release date",
                  textDetail: releasedate,
                  colorBox: Colors.grey,
                  colorFont: Colors.white,
                  font_Size: 25,
                  font_weight: FontWeight.bold,
                ),
                CardBox(
                  textHeader: "vote average",
                  textDetail: voteaverage,
                  colorBox: Colors.grey,
                  colorFont: Colors.white,
                  font_Size: 25,
                  font_weight: FontWeight.bold,
                ),
              ],
            ),
          ),
        ));
  }
}
