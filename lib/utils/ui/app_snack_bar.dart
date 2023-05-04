import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../resource/resource.dart';

enum NotificationType {
  success(color: AppColors.green),
  error(color: AppColors.red);

  final Color color;

  const NotificationType({required this.color});
}

class AppSnackbar {
  static showErrorNotification({
    required String message,
  }) {
    Get.closeAllSnackbars();
    return Get.rawSnackbar(
      backgroundColor: AppColors.red,
      snackPosition: SnackPosition.TOP,
      borderColor: AppColors.red,
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 8,
      ),
      borderRadius: 8,
      snackStyle: SnackStyle.GROUNDED,
      animationDuration: const Duration(milliseconds: 300),
      messageText: _SnackBar(
        message: message,
      ),
    );
  }

  static showSuccessNotification({
    required String message,
  }) {
    Get.closeAllSnackbars();
    return Get.rawSnackbar(
      backgroundColor: AppColors.green,
      snackPosition: SnackPosition.TOP,
      borderColor: AppColors.green,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      borderRadius: 8,
      snackStyle: SnackStyle.GROUNDED,
      animationDuration: const Duration(milliseconds: 300),
      messageText: _SnackBar(
        message: message,
      ),
    );
  }
}
class _SnackBar extends StatelessWidget {
  const _SnackBar({
    Key? key,
    required this.message,
  }) : super(key: key);

  final String message;

  @override
  Widget build(BuildContext context) {
    return Text(
      message,
      style: const TextStyle(
        fontSize: 13,
        color: Colors.white,
      ),
    );
  }
}