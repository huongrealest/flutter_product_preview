import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

/// Controls specific aspects of the operating system's graphical interface and
/// how it interacts with the application.
extension SystemChromeExtension on SystemChrome {
  static void hideKeyboardIfVisible() =>
      FocusManager.instance.primaryFocus?.unfocus();

  static void setTransparentSystemUI() => SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(
          statusBarColor: Colors.transparent, // transparent status bar
          statusBarIconBrightness: Brightness.dark,
        ),
      );
}
