import 'package:flutter_test/flutter_test.dart';

import 'package:flutter_balmy_sdk/flutter_balmy_sdk.dart';

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

void main() {
  test('post value', () async {
    SDKfunc.getChatId();
    SDKfunc.getChatResponse();
    SDKfunc.endChat();
    // var test = await SDKfunc.endChat();
    // print(test);
  });
}
