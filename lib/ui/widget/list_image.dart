import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:project_akhir_mobile_apps/home.dart';
import 'package:project_akhir_mobile_apps/ui/widget/button_image.dart';

class ListGambar extends StatelessWidget {
  // final VoidCallback press;
  const ListGambar({super.key});

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
            icon: Icon(Icons.arrow_back),
          ),
        ),
      ),
      body: Container(
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(
              300,
              (index) => Padding(
                padding: const EdgeInsets.all(5.0),
                child: ButtonImg(
                  btnimg:
                      'https://id-live-01.slatic.net/p/f2fe51a9d07b5c05815f2614082ac716.jpg',
                  chapter: "100",
                  press: (){},
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
