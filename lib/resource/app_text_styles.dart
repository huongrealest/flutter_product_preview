import 'package:flutter/material.dart';
import 'package:preview/resource/resource.dart';

class AppTextStyles {
  static const TextStyle button = TextStyle(
    fontSize: 16,
    color: AppColors.lotion,
    fontWeight: FontWeight.w700,
    fontFamily: 'Quicksand',
  );
  static const TextStyle hintText = TextStyle(
    fontSize: 14,
    color: AppColors.gray,
    fontWeight: FontWeight.w400,
  );
  static const TextStyle input = TextStyle(
    fontSize: 14,
    color: AppColors.blackOlive,
    fontWeight: FontWeight.w400,
  );
  static const TextStyle error = TextStyle(
    fontSize: 14,
    color: AppColors.red,
    fontWeight: FontWeight.w400,
  );
}
