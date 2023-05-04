import 'package:flutter/material.dart';

import '../../resource/resource.dart';

class AppBorderAndRadius {
  static const defaultRadius = Radius.circular(5);

  static const formRadius = Radius.circular(5);

  static const defaultBorderRadius = BorderRadius.all(defaultRadius);

  static const formBorderRadius = BorderRadius.all(formRadius);

  static OutlineInputBorder outlineInputBorder = const OutlineInputBorder(
    borderSide: BorderSide(
      color: AppColors.borderColor,
      width: 1,
    ),
    borderRadius: formBorderRadius,
  );
  static OutlineInputBorder focusedInputBorder = const OutlineInputBorder(
    borderSide: BorderSide(
      color: AppColors.green,
      width: 2,
    ),
    borderRadius: formBorderRadius,
  );

  static const OutlineInputBorder outlineInputErrorBorder = OutlineInputBorder(
    borderSide: BorderSide(
      color: AppColors.red,
      width: 2,
    ),
    borderRadius: formBorderRadius,
  );
}
