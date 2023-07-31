// ignore_for_file: file_names, non_constant_identifier_names

import 'balmy_sdk.dart';

class ChatId {
  String? status;
  int? id;

  ChatId({this.status, this.id});

  factory ChatId.fromJson(Map<String, dynamic> json) {
    return ChatId(status: json['status'], id: json['chat_id']);
  }
}

class ChatResponse {
  String? status;
  String? response;

  ChatResponse({this.status, this.response});

  factory ChatResponse.fromJson(Map<String, dynamic> json) {
    return ChatResponse(status: json['status'], response: json['response']);
  }
}

class EndChat {
  String? status;

  EndChat({this.status});

  factory EndChat.fromJson(Map<String, dynamic> json) {
    return EndChat(status: json['status']);
  }
}

class SDKfunc {
  static Future<String> getChatId(Map data) async {
    try {
      Map<String, dynamic> response = await ApiService.getChatId(data);
      var testresponse = ChatId.fromJson(response);
      return testresponse.id.toString();
    } catch (e) {
      throw Exception('Failed to get chat ID : $e');
    }
  }

  static Future<String> getChatResponse(Map data) async {
    try {
      Map<String, dynamic> response = await ApiService.getChatResponse(data);
      var testresponse = ChatResponse.fromJson(response);
      return testresponse.response.toString();
    } catch (e) {
      throw Exception('Failed to get chat response  : $e');
    }
  }

  static Future<String> endChat(Map data) async {
    try {
      Map<String, dynamic> response = await ApiService.endChat(data);
      var testresponse = EndChat.fromJson(response);
      return testresponse.status.toString();
    } catch (e) {
      throw Exception('Failed to end chat : $e');
    }
  }
}
