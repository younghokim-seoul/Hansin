import 'dart:async';
import 'dart:io';

import 'package:flutter/services.dart';
import 'package:path_provider/path_provider.dart';

Future<File> fromAsset(String asset, String filename) async {

  Completer<File> completer = Completer();

  try {
    var dir = await getApplicationDocumentsDirectory();
    File file = File("${dir.path}/$filename");
    var data = await rootBundle.load(asset);
    var bytes = data.buffer.asUint8List();
    await file.writeAsBytes(bytes, flush: true);
    completer.complete(file);
  } catch (e) {
    throw Exception('Error parsing asset file!');
  }

  return completer.future;
}
