import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:project_akhir_mobile_apps/api/movie/Search_Response_Model.dart';

class SearchResponse {
  Future<SearchResponseModel> getUser() async {
    var url = Uri.parse("https://movie-database-alternative.p.rapidapi.com/");
    var response = await http.get(url);
    var result = json.decode(response.body);
    return SearchResponseModel.fromJson(result);
  }
}
