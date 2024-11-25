import 'src/printer_label_interface.dart';

PrinterLabelPlatform get _platform => PrinterLabelPlatform.instance;

class FlutterPrinterLabel {
  static Future<void> printUSB() => _platform.printUSB();
}
