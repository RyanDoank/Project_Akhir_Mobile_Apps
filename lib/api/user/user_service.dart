import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:project_akhir_mobile_apps/api/user/user_model.dart';

class UserService {
  Future<UserResponseModel> getUser() async {
    var url = Uri.parse("https://randomuser.me/api/?results=2");
    var response = await http.get(url);
    var result = json.decode(response.body);
    return UserResponseModel.fromJson(result);
  }
}
