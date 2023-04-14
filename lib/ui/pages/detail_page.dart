import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_akhir_mobile_apps/api/user/user_model.dart';
import 'package:project_akhir_mobile_apps/home.dart';
import 'package:project_akhir_mobile_apps/ui/widget/description_widget.dart';
import 'package:project_akhir_mobile_apps/ui/widget/section_button.dart';
import 'package:project_akhir_mobile_apps/ui/widget/section_desc.dart';
import 'package:project_akhir_mobile_apps/ui/widget/section_image.dart';

class DetailPage extends StatelessWidget {
  final Result userDetail;
  const DetailPage({Key? key, required this.userDetail}) : super(key: key);

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
                context,
                MaterialPageRoute(
                  builder: (context) => Home(),
                ),
              );
            },
            icon: Icon(Icons.arrow_back),
          ),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          child: Column(
            children: [
              Container(
                child: Container(
                  height: 300,
                  child: Row(
                    children: <Widget>[
                      // Padding(
                      //   padding:
                      //       EdgeInsets.only(top: 5, bottom: 5, left: 5, right: 5),
                      // ),
                      ImageSection(userDetail.picture.large),
                      // DescSection(
                      //   judul: userDetail.email,
                      // ),
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
                          buttonsection: userDetail.email,
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
                        "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of de Finibus Bonorum et Malorum (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, Lorem ipsum dolor sit amet.., comes from a line in section 1.10.32. The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from de Finibus Bonorum et Malorum by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham."),
                    // DescSection(
                    //   judul: userDetail.gender,
                    // ),
                    Description(
                      userDetail.gender,
                    )
                  ],
                ),
              ),
              Container(
                height: 100,
                child: Row(
                  children: <Widget>[
                    // DescSection(
                    //   judul: userDetail.name.first,
                    // ),
                    Description(
                      userDetail.gender,
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
