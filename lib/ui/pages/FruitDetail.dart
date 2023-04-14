import 'package:flutter/material.dart';
import 'package:project_akhir_mobile_apps/api/user/user_model.dart';

class FruitDetail extends StatelessWidget {
  final Result fruitDataModel;

  const FruitDetail({Key? key, required this.fruitDataModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(fruitDataModel.name.first),
      ),
      body: Column(
        children: [
          Image.network(fruitDataModel.picture.large),
          SizedBox(
            height: 10,
          ),
          Text(
            fruitDataModel.email,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          )
        ],
      ),
    );
  }
}
