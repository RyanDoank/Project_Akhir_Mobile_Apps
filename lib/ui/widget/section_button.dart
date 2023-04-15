import 'package:flutter/material.dart';

class ButtonSection extends StatelessWidget {
  final String buttonsection;
  final VoidCallback press;

  const ButtonSection({required this.buttonsection, required this.press});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          OutlinedButton(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  SizedBox(width: 30),
                  Text(
                    buttonsection,
                    style: Theme.of(context).textTheme.subtitle2,
                  ),
                ],
              ),
            ),
            onPressed: press,
            style: OutlinedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
            ),
          )
        ],
      ),
    );
  }
}
