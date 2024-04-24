import 'package:package_info_plus/package_info_plus.dart';

class GlobalAppCode {
  late final String appCode;
  static final GlobalAppCode _instance = GlobalAppCode._privateConstructor();
  bool _initialized = false;

  GlobalAppCode._privateConstructor();

  factory GlobalAppCode() {
    return _instance;
  }

  Future<void> init() async {
    if (!_initialized) {
      final PackageInfo packageInfo = await PackageInfo.fromPlatform();
      appCode = packageInfo.packageName;
      _initialized = true;
    }
  }
}
