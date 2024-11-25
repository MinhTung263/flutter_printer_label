import 'package:plugin_platform_interface/plugin_platform_interface.dart';

abstract class PrinterLabelPlatform extends PlatformInterface {
  PrinterLabelPlatform() : super(token: _token);

  static final Object _token = Object();

  static late PrinterLabelPlatform _instance;

  /// The default instance of [PathProviderPlatform] to use.
  ///
  /// Defaults to [MethodChannelPathProvider].
  static PrinterLabelPlatform get instance => _instance;

  static set instance(PrinterLabelPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<void> printUSB();
}
