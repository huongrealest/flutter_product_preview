import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../resource/resource.dart';

_navigateBack() => Get.back(result: false);

class AppDialogs {
  static hideDialog() => _navigateBack();

  static showLoadingCircle() => Get.dialog(
        WillPopScope(
          onWillPop: () async => false,
          child: const SizedBox.expand(
            child: Center(
              child: CircularProgressIndicator(
                color: AppColors.green,
              ),
            ),
          ),
        ),
        barrierDismissible: false,
        routeSettings: const RouteSettings(name: 'loading'),
      );

  static hideLoadingCircle() => _navigateBack();
}
