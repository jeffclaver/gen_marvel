import 'dart:async';
import 'package:gen_marvel/core/configs/inject.dart';

abstract class AppConfig {
  static final initCompleter = Completer<bool>();

  static Future<void> initConfigApp() async {
    if (initCompleter.isCompleted) return;

    await initCore();

    initCompleter.complete(true);
  }
}
