import 'package:flutter/material.dart';
import 'package:project_akhir_mobile_apps/ui/widget/list_image.dart';
import 'package:project_akhir_mobile_apps/ui/widget/section_image.dart';
import 'package:project_akhir_mobile_apps/ui/widget/section_desc.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.green.shade900, Colors.lightGreen.shade600],
          ),
        ),
        child: Column(
          children: <Widget>[
            Flexible(
              flex: 1,
              child: Container(
                height: 600,
                child: Row(
                  children: <Widget>[
                    //Row 1 Column 1
                    ImageSection(
                        'https://id-live-01.slatic.net/p/f2fe51a9d07b5c05815f2614082ac716.jpg'),
                    DescSection("Test", Color.fromARGB(255, 137, 125, 230),
                        Color.fromARGB(255, 5, 16, 226)),
                  ],
                ),
              ),
            ),
            Flexible(
              flex: 1,
              child: Row(
                children: <Widget>[
                  ListGambar(
                    press: () {},
                  )
                  //Row 1 Column 1
                  // DescSection("Test", Color.fromARGB(255, 244, 150, 57),
                  //     Color.fromARGB(255, 236, 16, 13)),
                ],
              ),
            ),
            Flexible(
              flex: 1,
              child: Row(
                children: <Widget>[
                  //Row 1 Column 1
                  DescSection("Test", Color.fromARGB(255, 144, 213, 137),
                      Color.fromARGB(255, 236, 16, 13)),
                ],
              ),
            ),
            Flexible(
              flex: 1,
              child: Row(
                children: <Widget>[
                  //Row 1 Column 1
                  DescSection("Test", Color.fromARGB(255, 75, 80, 215),
                      Color.fromARGB(255, 236, 16, 13)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
    // return Container(
    //   child: Column(
    //     children: <Widget>[
    //       Container(
    //         child: Row(
    //           children: <Widget>[
    //             ImagePath('https://id-live-01.slatic.net/p/f2fe51a9d07b5c05815f2614082ac716.jpg',),
    //             TitleWidget("title")
    //           ],
    //         ),
    //       ),
    //       // ListGambar('https://picsum.photos/id/43/367/267'),
    //       TitleWidget("title")
    //     ],
    //   ),
    // );
  }
}
