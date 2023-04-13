import 'package:flutter/material.dart';
import 'package:project_akhir_mobile_apps/api/user/user_model.dart';
import 'package:project_akhir_mobile_apps/api/user/user_service.dart';
import 'package:project_akhir_mobile_apps/ui/pages/detail_page.dart';
import 'package:project_akhir_mobile_apps/ui/widget/elevated_card.dart';

class ListPage extends StatefulWidget {
  ListPage({super.key});

  @override
  State<ListPage> createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  UserResponseModel? _userlist;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    WidgetsBinding.instance?.addPostFrameCallback((_) async {
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
    });
  }

  // void _onTodoItemPressed(int index) {
  //   setState(() {
  //     _userlist!.results[index] = _userlist!.results[index];
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.separated(
        itemBuilder: (BuildContext context, int index) => ElevatedCard(
          imagePath:
              // _userlist != null
              //     ? _userlist!.results[index].picture.large
              //     :
              "https://m.media-amazon.com/images/M/MV5BZmMxNGE0YjEtYTVkMC00ZGVjLWI3OTEtODY0N2I0NGU0ZjQ0XkEyXkFqcGdeQXVyMTA0MTM5NjI2._V1_.jpg",
          // _userlist!.results.first.picture.large,
          title: _userlist != null
              ? _userlist!.results[index].name.first
              : "picture",
          subtitle:
              _userlist != null ? _userlist!.results[index].email : "picture",
          ontap: () {
            // _onTodoItemPressed(index);

            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DetailPage("hh", judul: "null",),
              ),
            );
          },
        ),
        separatorBuilder: (context, index) => SizedBox(
          height: 10,
        ),
        itemCount: _userlist!.results.length,
      ),
    );
  }
}
