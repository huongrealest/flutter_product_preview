import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../resource/resource.dart';

class FillButton extends StatelessWidget {
  const FillButton({
    Key? key,
    required this.text,
    this.onPressed,
    this.padding,
    this.width,
    this.backgroundColor,
    this.elevation = 0,
    this.style,
  }) : super(key: key);

  final String text;

  final VoidCallback? onPressed;

  final EdgeInsetsGeometry? padding;

  final double? width;

  final Color? backgroundColor;

  final double elevation;

  final TextStyle? style;

  factory FillButton.cancel({Function()? onPressed, String? text}) =>
      FillButton(
        onPressed: onPressed ?? Get.back,
        text: text ?? 'cancel'.tr,
        width: double.infinity,
        style: AppTextStyles.button,
        backgroundColor: AppColors.red,
      );

  @override
  Widget build(BuildContext context) {
    Widget child = Text(
      text,
      style: style ?? AppTextStyles.button,
      textAlign: TextAlign.center,
    );

    Widget current = ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor,
        padding: padding,
        shadowColor: backgroundColor,
        elevation: elevation,
      ),
      child: child,
    );
    if (width != null) current = SizedBox(width: width, child: current);

    return current;
  }
}
