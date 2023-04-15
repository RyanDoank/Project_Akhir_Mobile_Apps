import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:project_akhir_mobile_apps/api/movie/Movie_Response_Model.dart';

class MovieResponse {
  Future<MovieResponseModel> getUser() async {
    var url = Uri.parse("https://api.themoviedb.org/3/trending/movie/week?api_key=7427b75e2391c75a1e312fedc3b662ef");
    var response = await http.get(url);
    var result = json.decode(response.body);
    return MovieResponseModel.fromJson(result);
  }
}
