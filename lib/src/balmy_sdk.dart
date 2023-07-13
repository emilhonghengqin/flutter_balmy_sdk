import 'package:http/http.dart' as http;

// ignore: non_constant_identifier_names
String domain_name = 'tester.balmy.dev';

class ApiService {
  static Future<String> getChatId() async {
    var url = Uri.https(domain_name, '/api/getChatId');
    final response = await http.post(url);
    if (response.statusCode == 200) {
      return response.body;
    } else {
      throw Exception('Failed to get chat ID');
    }
  }

  static Future<String> getChatResponse() async {
    var url = Uri.https(domain_name, '/api/getChatResponse');
    final response = await http.post(url);
    if (response.statusCode == 200) {
      return response.body;
    } else {
      throw Exception('Failed to get chat response');
    }
  }

  static Future<String> endChat() async {
    var url = Uri.https(domain_name, '/api/endChat');
    final response = await http.post(url);
    if (response.statusCode == 200) {
      return response.body;
    } else {
      throw Exception('Failed to end chat');
    }
  }
}
