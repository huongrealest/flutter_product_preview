import 'package:flutter/material.dart';
import 'package:preview/common/theme/app_border_and_radius.dart';
import 'package:preview/common/theme/app_form_field.dart';
import 'package:preview/common/theme/app_paddings.dart';
import 'package:preview/resource/resource.dart';

class AppThemes {
  static ThemeData appTheme = ThemeData(
    
    backgroundColor: AppColors.lotion,
    dialogBackgroundColor: AppColors.lotion,
    scaffoldBackgroundColor: AppColors.lotion,
    inputDecorationTheme: AppFormField.outlineInputDecorationTheme,
    elevatedButtonTheme: const ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: MaterialStatePropertyAll(AppColors.green),
        padding: MaterialStatePropertyAll(AppPads.buttonPadding),
        shape: MaterialStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: AppBorderAndRadius.defaultBorderRadius,
          ),
        ),
      ),
    ),
    fontFamily: 'Quicksand',

  );
}
