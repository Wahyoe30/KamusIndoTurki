// To parse this JSON data, do
//
//     final listKamus = listKamusFromJson(jsonString);

import 'dart:convert';

ListKamus listKamusFromJson(String str) => ListKamus.fromJson(json.decode(str));

String listKamusToJson(ListKamus data) => json.encode(data.toJson());

class ListKamus {
  String message;
  List<Result> results;

  ListKamus({
    required this.message,
    required this.results,
  });

  factory ListKamus.fromJson(Map<String, dynamic> json) => ListKamus(
    message: json["message"],
    results: List<Result>.from(json["results"].map((x) => Result.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "message": message,
    "results": List<dynamic>.from(results.map((x) => x.toJson())),
  };
}

class Result {
  String kataIndonesia;
  String kataTurki;
  String jenisKata;
  String contohPenggunaan;
  String contohPenggunaanTurki;
  String keterangan;

  Result({
    required this.kataIndonesia,
    required this.kataTurki,
    required this.jenisKata,
    required this.contohPenggunaan,
    required this.contohPenggunaanTurki,
    required this.keterangan,
  });

  factory Result.fromJson(Map<String, dynamic> json) => Result(
    kataIndonesia: json["kata_indonesia"],
    kataTurki: json["kata_turki"],
    jenisKata: json["jenis_kata"],
    contohPenggunaan: json["contoh_penggunaan"],
    contohPenggunaanTurki: json["contoh_penggunaan_turki"],
    keterangan: json["keterangan"],
  );

  Map<String, dynamic> toJson() => {
    "kata_indonesia": kataIndonesia,
    "kata_turki": kataTurki,
    "jenis_kata": jenisKata,
    "contoh_penggunaan": contohPenggunaan,
    "contoh_penggunaan_turki": contohPenggunaanTurki,
    "keterangan": keterangan,
  };
}
