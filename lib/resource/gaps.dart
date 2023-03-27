
import 'package:flutter/material.dart';

class Gaps {
  // Khoang cach ngang
  static const Widget hGap4 = SizedBox(width: 4);
  static const Widget hGap8 = SizedBox(width: 8);
  static const Widget hGap10 = SizedBox(width: 10);
  static const Widget hGap12 = SizedBox(width: 12);
  static const Widget hGap16 = SizedBox(width: 16);
  static const Widget hGap20 = SizedBox(width: 20);
  static const Widget hGap24 = SizedBox(width: 24);
  static const Widget hGap32 = SizedBox(width: 32);
  static const Widget hGap40 = SizedBox(width: 40);
  // Khoang cach doc
  static const Widget vGap4 = SizedBox(height: 4);
  static const Widget vGap8 = SizedBox(height: 8);
  static const Widget vGap10 = SizedBox(height: 10);
  static const Widget vGap12 = SizedBox(height: 12);
  static const Widget vGap16 = SizedBox(height: 16);
  static const Widget vGap20 = SizedBox(height: 20);
  static const Widget vGap24 = SizedBox(height: 24);
  static const Widget vGap32 = SizedBox(height: 32);
  static const Widget vGap40 = SizedBox(height: 40);
  static const Widget vGap80 = SizedBox(height: 80);

  static Widget line = const Divider(
    height: 1,
    thickness: 1,
  );

  static Widget bigLine = const Divider(
    height: 8,
    thickness: 8,
  );

  static Widget vLine = const SizedBox(
    width: 0.6,
    height: 24.0,
    child: VerticalDivider(),
  );

  static const Widget empty = SizedBox.shrink();
}
