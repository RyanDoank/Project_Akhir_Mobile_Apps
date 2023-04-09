import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:project_akhir_mobile_apps/ui/pages/detail_page.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          leading: Center(
            child: IconButton(
              onPressed: () {
                print("back to page");
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => DetailPage()));
              },
              icon: Icon(Icons.person),
            ),
          )),
      body: BodyHome(),
    );
  }
}

//Body Hpme Pemesanan
class BodyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.separated(
            itemBuilder: (context, index) => ListTile(
                  leading: CircleAvatar(
                    backgroundImage:
                        NetworkImage('https://picsum.photos/id/43/367/267'),
                  ),
                  title: Row(
                      children: [Text("CODING FESS"), Text("@coding fess")]),
                  subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text("haloo..apakah ada yg ngerti flutter"),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Icon(Icons.reply),
                            Icon(Icons.replay),
                            Icon(Icons.favorite_border),
                          ],
                        )
                      ]),
                  trailing: Text("12.00"),
                ),
            separatorBuilder: (context, index) => SizedBox(height: 10),
            itemCount: 10));
  }
}
