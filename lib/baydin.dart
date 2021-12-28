
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Baydin {
  static const MethodChannel _channel = MethodChannel('baydin');

  static Future<String?> get platformVersion async {
    final String? version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }

  static Widget get titleWidget {
    return const Text('This is title widget');
  }
}
