import 'package:flutter/material.dart';
import 'package:project_akhir_mobile_apps/api/movie/Movie_Response.dart';
import 'package:project_akhir_mobile_apps/api/movie/Movie_Response_Model.dart';
import 'package:project_akhir_mobile_apps/ui/pages/detail_page.dart';
import 'package:project_akhir_mobile_apps/ui/widget/wide_image.dart';
import 'package:project_akhir_mobile_apps/ui/widget/section_image.dart';
import 'package:project_akhir_mobile_apps/ui/widget/Section_Release.dart';
import 'package:project_akhir_mobile_apps/ui/widget/title_widget.dart';

class ListPage extends StatefulWidget {
  const ListPage({super.key});

  @override
  State<ListPage> createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  MovieResponseModel? _movieservice;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback(
      (_) async {
        // do something
        print("Call API User");
        var movieservice = await MovieResponse().getUser();
        setState(() {
          _movieservice = movieservice;
        });
        print(
          _movieservice != null
              ? _movieservice!.results[0].title
              : "Failed Call API",
        );
      },
    );
  }

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
                  context, MaterialPageRoute(builder: (context) => ListPage()));
            },
            icon: Icon(Icons.person),
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: _movieservice != null ? _movieservice!.results.length : 0,
        itemBuilder: (BuildContext context, int index) => Card(
          child: ListTile(
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                WideImage(
                  _movieservice != null
                      ? _movieservice!.results[index].backdropPath
                      : "https://d3aa3603f5de3f81cb9fdaa5c591a84d5723e3cb.hosting4cdn.com/wp-content/uploads/2020/11/404-poster-not-found-CG17701-1.png",
                ),
              ],
            ),
            subtitle: Row(
              children: [
                Padding(padding: EdgeInsets.only(top: 100)),
                ImageSection(
                  _movieservice != null
                      ? _movieservice!.results[index].posterPath
                      : "https://d3aa3603f5de3f81cb9fdaa5c591a84d5723e3cb.hosting4cdn.com/wp-content/uploads/2020/11/404-poster-not-found-CG17701-1.png",
                ),
                
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TitleSection(
                      _movieservice != null
                          ? _movieservice!.results[index].title
                          : "title not found",
                    ),
                    SizedBox(width: 20),
                    releaseSection(
                      release: "Release date ",
                      apirelease: _movieservice != null
                          ? _movieservice!.results[index].releaseDate.toString()
                          : "release not found",
                    ),
                  ],
                ),
              ],
            ),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => DetailPage(
                    moviesdetail: _movieservice!.results[index],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
