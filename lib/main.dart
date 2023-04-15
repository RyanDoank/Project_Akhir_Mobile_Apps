import 'package:flutter/material.dart';
import 'package:project_akhir_mobile_apps/ui/pages/list_page.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(
      builder: (context, orientation, screenType) {
        return MaterialApp(
          home: ListPage(),
        );
      },
    );

    // return MaterialApp(
    //   title: "Project Akhir",
    //   home: Home(),
    // );
  }
}
