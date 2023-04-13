// To parse this JSON data, do
//
//     final searchResponseModel = searchResponseModelFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

SearchResponseModel searchResponseModelFromJson(String str) => SearchResponseModel.fromJson(json.decode(str));

String searchResponseModelToJson(SearchResponseModel data) => json.encode(data.toJson());

class SearchResponseModel {
    SearchResponseModel({
        required this.perPage,
        required this.data,
        required this.support,
    });

    final int perPage;
    final List<Datum> data;
    final Support support;

    factory SearchResponseModel.fromJson(Map<String, dynamic> json) => SearchResponseModel(
        perPage: json["per_page"],
        data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
        support: Support.fromJson(json["support"]),
    );

    Map<String, dynamic> toJson() => {
        "per_page": perPage,
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
        "support": support.toJson(),
    };
}

class Datum {
    Datum({
        required this.title,
        required this.year,
        required this.imdbId,
        required this.type,
        required this.poster,
    });

    final String title;
    final String year;
    final String imdbId;
    final String type;
    final String poster;

    factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        title: json["Title"],
        year: json["Year"],
        imdbId: json["imdbID"],
        type: json["Type"],
        poster: json["Poster"],
    );

    Map<String, dynamic> toJson() => {
        "Title": title,
        "Year": year,
        "imdbID": imdbId,
        "Type": type,
        "Poster": poster,
    };
}

class Support {
    Support({
        required this.url,
        required this.text,
    });

    final String url;
    final String text;

    factory Support.fromJson(Map<String, dynamic> json) => Support(
        url: json["url"],
        text: json["text"],
    );

    Map<String, dynamic> toJson() => {
        "url": url,
        "text": text,
    };
}
