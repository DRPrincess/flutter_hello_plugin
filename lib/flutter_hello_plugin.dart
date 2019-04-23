import 'dart:async';

import 'package:flutter/services.dart';

class FlutterHelloPlugin {
  static const MethodChannel _channel =
      const MethodChannel('flutter_hello_plugin');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
  static Future<String>  showToast(String message) async {
    final String version = await _channel.invokeMethod('showToast',message);
    return version;
  }
}
