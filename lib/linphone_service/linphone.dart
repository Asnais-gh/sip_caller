import 'package:flutter/services.dart';

class Linphone {
  static const MethodChannel _channel = MethodChannel('linphone');

  Future<void> login({required String username, required String password, required String domain}) async {
    try {
      await _channel.invokeMethod('login', {
        'username': username,
        'password': password,
        'domain': domain,
      });
    } on PlatformException catch (e) {
      print("Failed to login: '${e.message}'.");
    }
  }

  Future<void> makeCall(String callee) async {
    try {
      await _channel.invokeMethod('makeCall', {
        'callee': callee,
      });
    } on PlatformException catch (e) {
      print("Failed to make call: '${e.message}'.");
    }
  }
}
