import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:project_akhir_mobile_apps/api/movie/Movie_Response_Model.dart';
import 'package:project_akhir_mobile_apps/ui/pages/list_page.dart';
import 'package:project_akhir_mobile_apps/ui/widget/section_image2.dart';
import 'package:project_akhir_mobile_apps/ui/widget/section_button.dart';
import 'package:project_akhir_mobile_apps/ui/widget/section_desc.dart';

class DetailPage extends StatelessWidget {
  final ResultMovie moviesdetail;
  const DetailPage({Key? key, required this.moviesdetail}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: Center(
          child: IconButton(
            onPressed: () {
              if (kDebugMode) {
                print("back to page");
              }
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ListPage(),
                ),
              );
            },
            icon: const Icon(Icons.arrow_back),
          ),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            SizedBox(
              height: 300,
              child: Row(
                children: <Widget>[
                  ImageSection2(
                    moviesdetail.posterPath,
                  ),
                  DescSection(
                    title: moviesdetail.title,
                    language: moviesdetail.originalLanguage.name.toString(),
                    releasedate:
                        "Release date " + moviesdetail.releaseDate.toString(),
                    voteaverage: moviesdetail.voteAverage.toString(),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(moviesdetail.originalTitle),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: List.generate(
                        moviesdetail.genreIds.length,
                        (index) => Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: ButtonSection(
                            buttonsection:
                                moviesdetail.genreIds[index].toString(),
                            press: () {},
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(height: 10),
                  Text(
                    "Info",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  Text(moviesdetail.overview),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
