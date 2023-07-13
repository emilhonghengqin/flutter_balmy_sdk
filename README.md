<!--
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages).

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages).
-->


## Features

To make a traffic sdk.

## Getting started

To use this plugin, add `flutter_balmy_sdk` as a [dependency in your pubspec.yaml file](https://flutter.io/platform)

## Example

```dart
import 'dart:convert';
import 'balmy_sdk.dart';

final chatId = await ApiService.getChatId();
var jsonData = jsonDecode(chatId);
print(jsonData['chat_id']);
```