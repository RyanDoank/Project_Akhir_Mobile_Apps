import 'package:flutter/material.dart';
import 'package:project_akhir_mobile_apps/ui/pages/detail_page.dart';

class HeaderHome extends StatelessWidget {
  const HeaderHome({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      leading: Center(
        child: IconButton(
          onPressed: () {
            print("back to page");
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => DetailPage()));
          },
          icon: Icon(Icons.person),
        ),
      ),
    );
  }
}
