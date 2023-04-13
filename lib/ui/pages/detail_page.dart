import 'package:flutter/material.dart';
import 'package:project_akhir_mobile_apps/ui/widget/button_image.dart';
import 'package:project_akhir_mobile_apps/ui/widget/list_image.dart';
import 'package:project_akhir_mobile_apps/ui/widget/section_button.dart';
import 'package:project_akhir_mobile_apps/ui/widget/section_image.dart';
import 'package:project_akhir_mobile_apps/ui/widget/section_desc.dart';

class DetailPage extends StatelessWidget {
  final String genres;
  var judul;
  // final DetailPage detailpage;
  // final VoidCallback press;

  DetailPage(this.genres, {super.key, required this.judul});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.green.shade900, Colors.lightGreen.shade600],
            ),
          ),
          child: Column(
            children: <Widget>[
              Container(
                child: Container(
                  height: 300,
                  child: Row(
                    children: <Widget>[
                      Padding(
                          padding: EdgeInsets.only(
                              top: 5, bottom: 5, left: 5, right: 5)),
                      ImageSection(
                          'https://id-live-01.slatic.net/p/f2fe51a9d07b5c05815f2614082ac716.jpg'),
                      DescSection(
                        judul: judul,
                        // Color.fromARGB(255, 137, 125, 230),
                        // Color.fromARGB(255, 5, 16, 226),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: List.generate(
                      300,
                      (index) => Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: ButtonSection(
                          buttonsection: genres,
                          press: () {},
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(10),
                child: Column(
                  children: <Widget>[
                    Text(
                        "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of de Finibus Bonorum et Malorum (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, Lorem ipsum dolor sit amet.., comes from a line in section 1.10.32. The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from de Finibus Bonorum et Malorum by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.")
                    //Row 1 Column 1
                    // DescSection("Test", Color.fromARGB(255, 144, 213, 137),
                    //     Color.fromARGB(255, 236, 16, 13)),
                  ],
                ),
              ),
              Container(
                height: 100,
                child: Row(
                  children: <Widget>[
                    //Row 1 Column 1
                    DescSection(
                      judul: judul,
                      // Color.fromARGB(255, 75, 80, 215),
                      // Color.fromARGB(255, 236, 16, 13),
                    ),
                  ],
                ),
              ),
            ],
          ),
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
