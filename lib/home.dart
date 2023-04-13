import 'package:flutter/material.dart';
import 'package:project_akhir_mobile_apps/api/user/user_model.dart';
import 'package:project_akhir_mobile_apps/api/user/user_service.dart';
import 'package:project_akhir_mobile_apps/detailPesanan.dart';
import 'package:project_akhir_mobile_apps/ui/pages/list_page.dart';
import 'package:project_akhir_mobile_apps/ui/widget/button_image.dart';
import 'package:project_akhir_mobile_apps/ui/widget/header_home_widget.dart';
import 'package:project_akhir_mobile_apps/ui/widget/list_image.dart';
import 'package:project_akhir_mobile_apps/ui/widget/section_button.dart';
import 'package:project_akhir_mobile_apps/ui/widget/title_widget.dart';

import 'ui/pages/detail_page.dart';

class Home extends StatefulWidget {

  const Home({super.key});

  @override
  State<Home> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Home> {
  UserResponseModel? _user;

  // @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //   WidgetsBinding.instance?.addPostFrameCallback((_) async {
  //     // do something
  //     print("Call API User");
  //     var userservice = await UserService().getUser();
  //     setState(() {
  //       _user = userservice;
  //     });
  //     print(_user!.results.first.picture.large);
  //   });
  // }

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
            icon: Icon(Icons.person),
          ),
        ),
      ),
      body: ListPage()
      // TitleSection(
      //   _user != null ? _user!.results[0].name.first : "Name",
      // ),
    );
  }
}
