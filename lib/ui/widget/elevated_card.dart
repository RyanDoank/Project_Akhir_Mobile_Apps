import 'package:flutter/material.dart';
import 'package:project_akhir_mobile_apps/api/user/user_model.dart';
import 'package:project_akhir_mobile_apps/ui/widget/description_widget.dart';
import 'package:project_akhir_mobile_apps/ui/widget/section_button.dart';
import 'package:project_akhir_mobile_apps/ui/widget/section_image.dart';
import 'package:project_akhir_mobile_apps/ui/widget/subtitile_widget.dart';

import 'package:project_akhir_mobile_apps/ui/widget/title_widget.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../pages/detail_page.dart';

class ElevatedCard extends StatelessWidget {
  final String title;
  final String imagePath;
  final String subtitle;
  final BuildContext contextlistview;
  final Result userResult;

  // final VoidCallback onlongpress;

  ElevatedCard(
      {required this.imagePath,
      required this.title,
      required this.subtitle,
      required this.contextlistview,
      required this.userResult});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ListTile(
              leading: Column(
                children: [
                  Container(
                    padding: EdgeInsets.only(top: 5),
                    child: ImageSection(imagePath),
                    height: 45,
                  ),
                ],
              ),
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  TitleSection(title),
                  SizedBox(width: 20),
                  SubtitleSection(subtitle),
                ],
              ),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => DetailPage(
                      // judul: "abc",
                      userDetail: userResult,
                    ),
                  ),
                );
              },
              // onLongPress: onlongpress,
              // trailing:
              // Description('1000'),
            ),
          ],
        ),
      ),
    );
  }
}
