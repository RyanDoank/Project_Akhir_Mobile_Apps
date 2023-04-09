import 'package:flutter/material.dart';

class ButtonImg extends StatelessWidget {
  final String btnimg, chapter;
  final VoidCallback press;

  const ButtonImg(
      {required this.btnimg, required this.chapter, required this.press});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          OutlinedButton(
              onPressed: press,
              style: OutlinedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Image.network(
                      btnimg,
                      width: 50,
                      height: 50,
                    ),
                    SizedBox(width: 30),
                    Text(
                      chapter,
                      style: Theme.of(context).textTheme.subtitle2,
                    ),
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
