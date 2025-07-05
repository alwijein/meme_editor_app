import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle;

Future<Map<String, dynamic>> readJsonFileSurvey(String filePath) async {
  print('--- Parse json from: $filePath');
  return rootBundle.loadString(filePath).then((jsonStr) => jsonDecode(jsonStr));
}
