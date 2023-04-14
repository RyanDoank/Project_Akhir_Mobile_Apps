import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:project_akhir_mobile_apps/api/user/user_model.dart';
import 'package:project_akhir_mobile_apps/api/user/user_service.dart';
import 'package:project_akhir_mobile_apps/ui/pages/detail_page.dart';
import 'package:project_akhir_mobile_apps/ui/widget/section_image.dart';
import 'package:project_akhir_mobile_apps/ui/widget/subtitile_widget.dart';
import 'package:project_akhir_mobile_apps/ui/widget/title_widget.dart';

class ListPage extends StatefulWidget {
  const ListPage({super.key});

  @override
  State<ListPage> createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  UserResponseModel? _userlist;

  static Result userWhenNull = new Result(
      gender: "gender",
      name: Name(title: "title", first: "first", last: "last"),
      location: Location(
        street: Street(number: 0, name: "name"),
        city: "city",
        state: "state",
        country: "country",
        postcode: "postcode",
        coordinates: Coordinates(latitude: "latitude", longitude: "longitude"),
        timezone: Timezone(offset: "offset", description: "description"),
      ),
      email: "email",
      login: Login(
        uuid: "uuid",
        username: "username",
        password: "password",
        salt: "salt",
        md5: "md5",
        sha1: "sha1",
        sha256: "sha256",
      ),
      dob: Dob(date: DateTime(2002), age: 9),
      registered: Dob(date: DateTime(2002), age: 9),
      phone: "phone",
      cell: "cell",
      id: Id(name: "name", value: "value"),
      picture:
          Picture(large: "large", medium: "medium", thumbnail: "thumbnail"),
      nat: "nat");

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback(
      (_) async {
        // do something
        print("Call API User");
        var userservice = await UserService().getUser();
        setState(() {
          _userlist = userservice;
        });
        print(
          _userlist != null
              ? _userlist!.results[0].name.first
              : "Failed Call API",
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemCount: _userlist!.results.length,
        itemBuilder: (BuildContext context, int index) => Card(
          child: ListTile(
            leading: Column(
              children: [
                Container(
                  padding: EdgeInsets.only(top: 5),
                  child: ImageSection(
                    _userlist != null
                        ? _userlist!.results[index].picture.large
                        : "https://m.media-amazon.com/images/M/MV5BZmMxNGE0YjEtYTVkMC00ZGVjLWI3OTEtODY0N2I0NGU0ZjQ0XkEyXkFqcGdeQXVyMTA0MTM5NjI2._V1_.jpg",
                  ),
                  height: 45,
                ),
              ],
            ),
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                TitleSection(
                  _userlist != null
                      ? _userlist!.results[index].name.first
                      : "title",
                ),
                SizedBox(width: 20),
                SubtitleSection(_userlist != null
                    ? _userlist!.results[index].email
                    : "subtitle"),
              ],
            ),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => DetailPage(
                    userDetail: _userlist!.results[index],
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
