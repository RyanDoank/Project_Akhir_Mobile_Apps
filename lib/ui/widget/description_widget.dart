import 'package:flutter/material.dart';

class Description extends StatelessWidget {
  final String description;
  const Description(this.description);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        description,
        style: TextStyle(fontSize: 12),
      ),
    );
  }
}
