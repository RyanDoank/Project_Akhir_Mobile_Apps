import 'package:flutter/material.dart';
import 'package:project_akhir_mobile_apps/ui/widget/description_widget.dart';
import 'package:project_akhir_mobile_apps/ui/widget/section_image.dart';
import 'package:project_akhir_mobile_apps/ui/widget/subtitile_widget.dart';

import 'package:project_akhir_mobile_apps/ui/widget/title_widget.dart';

class ElevatedCard extends StatelessWidget {
  final String title;
  final String imagePath;
  final String subtitle;
  final VoidCallback press;

  ElevatedCard(
      {required this.imagePath,
      required this.title,
      required this.subtitle,
      required this.press});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        child: Column(
          children: <Widget>[
            Container(
              child: InkWell(
                splashColor: Colors.blue.withAlpha(30),
                onTap: press,
                child: ListTile(
                  leading: ImageSection(imagePath),
                  title: TitleSection(title),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SubtitleSection(subtitle),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Icon(Icons.reply),
                          SizedBox(width: 30),
                          Icon(Icons.replay),
                          SizedBox(width: 30),
                          Icon(Icons.star),
                        ],
                      )
                    ],
                  ),
                  trailing: Description('1000'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
