import 'package:flutter/material.dart';
import 'package:flutter_labs/flutter_lab.dart';
import 'package:flutter_labs/di/di.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setupLocator();

  FlutterError.onError = (details) {
    return talker.handle(details.exception, details.stack);
  };

  runApp(AppName());
}


