// ignore_for_file: file_names

import 'dart:convert';
import 'balmy_sdk.dart';

class SDKfunc {
  static Future<String> getChatId() async {
    try {
      final chatId = await ApiService.getChatId();
      var jsonData = jsonDecode(chatId);
      return jsonData['chat_id'];
    } catch (e) {
      throw Exception('Failed to get chat ID : $e');
    }
  }

  static Future<String> getChatResponse() async {
    try {
      final chatResponse = await ApiService.getChatResponse();
      var jsonData = jsonDecode(chatResponse);
      return jsonData['response'];
    } catch (e) {
      throw Exception('Failed to get chat response : $e');
    }
  }

  static Future<String> endChat() async {
    try {
      final endChat = await ApiService.endChat();
      var jsonData = jsonDecode(endChat);
      return jsonData['status'];
    } catch (e) {
      throw Exception('Failed to end chat : $e');
    }
  }
}
