import 'package:flutter/material.dart';

import '../../resource/resource.dart';
import 'app_border_and_radius.dart';
import 'app_paddings.dart';

class AppFormField {
  static InputDecorationTheme outlineInputDecorationTheme =
      InputDecorationTheme(
    hintStyle: AppTextStyles.hintText,
    errorMaxLines: 2,
    helperMaxLines: 2,
    contentPadding: AppPads.formFieldContent,
    enabledBorder: AppBorderAndRadius.outlineInputBorder,
    disabledBorder: AppBorderAndRadius.outlineInputBorder,
    focusedBorder: AppBorderAndRadius.focusedInputBorder,
    errorBorder: AppBorderAndRadius.outlineInputErrorBorder,
    focusedErrorBorder: AppBorderAndRadius.outlineInputErrorBorder,
    filled: true,
    fillColor: Colors.transparent,
    floatingLabelBehavior: FloatingLabelBehavior.auto,
    floatingLabelStyle: AppTextStyles.hintText.copyWith(color: AppColors.green),
    labelStyle: AppTextStyles.hintText,
  );
  static InputDecoration outlineInputDecoration = InputDecoration(
    hintStyle: AppTextStyles.hintText,
    errorMaxLines: 2,
    helperMaxLines: 2,
    hintMaxLines: 2,
    contentPadding: AppPads.formFieldContent,
    enabledBorder: AppBorderAndRadius.outlineInputBorder,
    disabledBorder: AppBorderAndRadius.outlineInputBorder,
    focusedBorder: AppBorderAndRadius.focusedInputBorder,
    errorBorder: AppBorderAndRadius.outlineInputErrorBorder,
    focusedErrorBorder: AppBorderAndRadius.outlineInputErrorBorder,
    filled: true,
    fillColor: Colors.transparent,
    floatingLabelBehavior: FloatingLabelBehavior.auto,
    floatingLabelStyle: AppTextStyles.hintText.copyWith(color: AppColors.green),
    labelStyle: AppTextStyles.hintText,
  );
}
