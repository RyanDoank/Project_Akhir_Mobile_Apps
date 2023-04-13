import 'package:flutter/material.dart';
import 'package:project_akhir_mobile_apps/api/movie/Search_Response_Model.dart';
import 'package:project_akhir_mobile_apps/api/user/user_model.dart';

class TitleSection extends StatelessWidget {
  final String title;

  // const TitleWidget({super.key});
  const TitleSection(this.title);

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.red,
      child: Text(
        title,
        style: TextStyle(
          fontSize: 20,
        ),
      ),
    );
  }
}
