import 'package:get/get.dart';
import 'package:preview/common/services/auth_service.dart';

class AppBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(AuthService());
  }
}
