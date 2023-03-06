import 'dart:async';

import 'package:flutter/material.dart';
import 'package:gen_marvel/core/configs/app_config.dart';
import 'package:gen_marvel/core/errors/pages/error_page.dart';
import 'package:gen_marvel/layers/presentation/pages/home_page.dart';

void main() {
  runZonedGuarded(() async {
    WidgetsFlutterBinding.ensureInitialized();
    await AppConfig.initConfigApp();
    runApp(const McuApp());
  }, (error, stack) {
    debugPrint("<====== ERROR AO INICIAR APP =====> ");
    debugPrint("- E R R O R: $error");
    debugPrint("- S T A C K: $stack");

    runApp(
      MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        debugShowCheckedModeBanner: false,
        home: const ErrorPage(),
      ),
    );
  });
}

class McuApp extends StatelessWidget {
  const McuApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Marvel APP",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: const ColorScheme.light(),
      ),
      initialRoute: '/',
      routes: {'/': (context) => const HomePage()},
    );
  }
}
