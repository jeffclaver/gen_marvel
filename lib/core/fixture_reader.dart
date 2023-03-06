import 'dart:convert';

import 'package:flutter/services.dart';

Future<Map<String, dynamic>> readJson() async {
  final String response = await rootBundle.loadString('assets/mock.json');
  final data = await json.decode(response);
  return data;
}
