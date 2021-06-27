import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart' as http;

class OpenBD {
  String isbn;
  String title;
  String publisher;
  String cover;
  String author;

  OpenBD({this.isbn, this.title, this.publisher, this.cover, this.author});

  factory OpenBD.fromJson(Map<String, dynamic> json) {
    var summary = json['summary'];
    return OpenBD(
      isbn: summary['isbn'],
      title: summary['title'],
      publisher: summary['summary'],
      cover: summary['cover'],
      author: summary['author'],
    );
  }
}

class FlutterOpenBD {
  final endpoint = 'https://api.openbd.jp/v1/';

  FlutterOpenBD();

  Future<OpenBD> getISBN(String isbn) async {
    var url = Uri.parse('${endpoint}get?isbn=$isbn');
    final response = await http.get(url);
    OpenBD openbd;
    if (response.statusCode == 200) {
      var data = json.decode(response.body);
      if (data[0] != null) {
        openbd = OpenBD.fromJson(data[0]);
      }
    }
    return openbd;
  }
}
