import 'package:flutter/material.dart';
import 'package:project_akhir_mobile_apps/detailPesanan.dart';
import 'package:project_akhir_mobile_apps/ui/pages/list_page.dart';
import 'package:project_akhir_mobile_apps/ui/widget/button_image.dart';
import 'package:project_akhir_mobile_apps/ui/widget/header_home_widget.dart';
import 'package:project_akhir_mobile_apps/ui/widget/list_image.dart';

import 'ui/pages/detail_page.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: Center(
          child: IconButton(
            onPressed: () {
              print("back to page");
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Home()));
            },
            icon: Icon(Icons.person),
          ),
        ),
      ),
      body: DetailPage(),
    );
  }
}
