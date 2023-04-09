import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:project_akhir_mobile_apps/ui/widget/description_widget.dart';
import 'package:project_akhir_mobile_apps/ui/widget/section_image.dart';
import 'package:project_akhir_mobile_apps/ui/widget/subtitile_widget.dart';
import 'package:project_akhir_mobile_apps/ui/widget/title_widget.dart';

class TitleDetail extends StatelessWidget {
  final String title;
  final String subtitle;
  final String description;
  final String imagePath;
  const TitleDetail(
      this.title, this.subtitle, this.description, this.imagePath);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          ListTile(
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
          ),
        ],
      ),
    );
  }
}
