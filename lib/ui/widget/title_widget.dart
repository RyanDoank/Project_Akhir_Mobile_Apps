import 'package:flutter/material.dart';
import 'package:project_akhir_mobile_apps/api/Search_Response_Model.dart';

class TitleSection extends StatefulWidget {
  final String title;

  // const TitleWidget({super.key});
  const TitleSection(this.title);

  @override
  State<TitleSection> createState() => _TitleSectionState();
}

class _TitleSectionState extends State<TitleSection> {
  SearchResponseModel? _data;
  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.red,
      child: Text(
        "hello"
        // _data != null ? _data!.data!. : "Tidak Tersedia",
        // style: TextStyle(
        //   fontSize: 50,
        // ),
      ),
    );
  }
}
