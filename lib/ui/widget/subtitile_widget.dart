import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class SubtitleSection extends StatelessWidget {
  final String subtitle;
  const SubtitleSection(this.subtitle);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        subtitle,
        style: TextStyle(
          fontSize: 13,
        ),
      ),
    );
  }
}
