import 'dart:async';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:preview/utils/ui/system_chrome_extension.dart';

import '../core/firebase/firebase_options.dart';

Future bootstrap(FutureOr<Widget> Function() builder) async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  SystemChromeExtension.setTransparentSystemUI();
  runApp(await builder());
}
