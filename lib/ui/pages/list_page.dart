import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:project_akhir_mobile_apps/api/Search_Response_Model.dart';
import 'package:project_akhir_mobile_apps/ui/widget/elevated_card.dart';
import 'package:project_akhir_mobile_apps/ui/widget/list_image.dart';
import 'package:project_akhir_mobile_apps/ui/widget/title_widget.dart';

class ListPage extends StatefulWidget {
  const ListPage({super.key});

  @override
  State<ListPage> createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  SearchResponseModel? _data;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: List.generate(
            10,
            (index) => Padding(
              padding: const EdgeInsets.all(5.0),
              child: ElevatedCard(
                imagePath:
                    'https://id-live-01.slatic.net/p/f2fe51a9d07b5c05815f2614082ac716.jpg',
                title: "conan",
                subtitle: "dectaktif",
                press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ListGambar(
                        press: () {},
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
