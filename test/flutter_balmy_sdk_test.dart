import 'package:flutter_test/flutter_test.dart';

import 'package:flutter_balmy_sdk/flutter_balmy_sdk.dart';

void main() {
  test('post value', () {
    SDKfunc.getChatId();
    SDKfunc.getChatResponse();
    SDKfunc.endChat();
  });
}
