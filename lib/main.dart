// Dart imports:
import 'dart:async';
import 'dart:io';

// Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// Package imports:
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'app/app.dart';
import 'packages/network/api_config.dart';

GlobalKey appGlobalKey = GlobalKey();

void main() async {
  runZonedGuarded<Future<void>>(() async {
    WidgetsFlutterBinding.ensureInitialized();

    ApiConfig.init(APIFlavor.dev);
    runApp(ProviderScope(
      child: App(
        key: appGlobalKey,
      ),
    ));
  }, (error, stack) => debugPrint(error.toString()));
  // _statusBarSetup();
}

void statusBarSetup() {
  if (Platform.isAndroid) {
    SystemUiOverlayStyle style = const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark);
    SystemChrome.setSystemUIOverlayStyle(style);
  } else if (Platform.isIOS) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);
  }
}
