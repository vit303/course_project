import 'dart:io';
import 'dart:convert';

Future<List<Map>> readJsonFile(String filePath) async {
  var input = await File(filePath).readAsString();
  var map = jsonDecode(input);
  return map['apartments'];
}

