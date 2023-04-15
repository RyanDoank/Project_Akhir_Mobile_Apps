import 'package:flutter/material.dart';

class CardBox extends StatelessWidget {
  const CardBox({
    Key? key,
    required this.textHeader,
    required this.textDetail,
    required this.colorBox,
    required this.colorFont,
    required this.font_Size,
    required this.font_weight,
  }) : super(key: key);

  final String textHeader;
  final String textDetail;
  final Color colorBox;
  final Color colorFont;
  final double font_Size;
  final FontWeight font_weight;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        margin: EdgeInsets.fromLTRB(10, 0, 5, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Card(
              color: colorBox,
              child: Container(
                child: Text(
                  textHeader,
                  style: TextStyle(
                    fontSize: font_Size,
                    color: colorFont,
                    fontWeight: font_weight,
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(10, 0, 5, 0),
              child: Text(
                textDetail,
              ),
            ),
          ],
        ),
      ),
      // child: Text(text)

      // )
      //     //child: Text("Account Balance"),
      //    ),
    );
  }
}
