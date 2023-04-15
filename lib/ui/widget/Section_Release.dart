import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class releaseSection extends StatelessWidget {
  final String apirelease;
  final String release;
  const releaseSection({required this.apirelease, required this.release});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        release+
        apirelease,
        style: TextStyle(
          fontSize: 15,
        ),
      ),
    );
  }
}
