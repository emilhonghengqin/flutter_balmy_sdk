// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'dart:convert';

import 'package:http/http.dart' as http;

// ignore: non_constant_identifier_names
String domain_name = 'tester.balmy.dev';

class ApiService {
  static Future<Map<String, dynamic>> getChatId(Map data) async {
    var url = Uri.https(domain_name, '/api/getChatId');
    // Map data = {"api_id": 101, "api_secret": "malaysia"};
    final http.Response response = await http.post(url,
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode(data));
    Map<String, dynamic> jsonData = jsonDecode(response.body);
    return jsonData;
  }

  static Future<Map<String, dynamic>> getChatResponse(Map data) async {
    var url = Uri.https(domain_name, '/api/getChatResponse');
    // Map data = {
    //   "api_id": 101,
    //   "api_secret": "malaysia",
    //   "chat_id": 999,
    //   "message": "Hello"
    // };
    final http.Response response = await http.post(url,
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode(data));
    Map<String, dynamic> jsonData = jsonDecode(response.body);
    return jsonData;
  }

  static Future<Map<String, dynamic>> endChat(Map data) async {
    var url = Uri.https(domain_name, '/api/endChat');
    // Map data = {"api_id": 101, "api_secret": "malaysia", "chat_id": 999};
    final http.Response response = await http.post(url,
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode(data));
    Map<String, dynamic> jsonData = jsonDecode(response.body);
    return jsonData;
  }

  // Future<String> endChat() async {
  //   var url = Uri.https(domain_name, '/api/endChat');
  //   final response = await http.post(url);
  //   if (response.statusCode == 200) {
  //     return response.body;
  //   } else {
  //     throw Exception('Failed to end chat');
  //   }
  // }
}
