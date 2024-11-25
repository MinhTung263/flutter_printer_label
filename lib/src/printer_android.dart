import 'package:flutter/services.dart';

import 'printer_label_interface.dart';

const MethodChannel _channel = MethodChannel('flutter_printer_label');

class PrinterLabelAndroid extends PrinterLabelPlatform {
  // For example/.dart_tool/flutter_build/generated_main.dart
  static registerWith() {
    PrinterLabelPlatform.instance = PrinterLabelAndroid();
  }

  @override
  Future<void> printUSB() async {
    try {
      await _channel.invokeMethod('print_usb');
    } catch (e) {
      print('Lỗi in: $e');
    }
  }
}
