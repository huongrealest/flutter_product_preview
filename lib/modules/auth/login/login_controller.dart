import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:preview/common/mixins/overlay_mixin.dart';
import 'package:preview/common/services/auth_service.dart';
import 'package:preview/modules/navigation/navigation_screen.dart';
import 'package:preview/repositories/auth_repo.dart';

class LoginController extends GetxController with OverlayMixin {
  final AuthRepo _repo;

  LoginController() : _repo = AuthRepo();

  final txtUserName = TextEditingController();

  final txtPwd = TextEditingController();

  final form = GlobalKey<FormState>();

  final _auth = Get.find<AuthService>();

  login() async {
    if (form.currentState?.validate() == false) return;
    showLoading();
    try {
      await _repo.login(
        email: txtUserName.text,
        password: txtPwd.text,
      );
      hideLoading();
      final user = _auth.user;
      if (user == null) return;
      if (user.emailVerified) {
        Get.offAll(() => const NavigationScreen());
      } else {
        user.sendEmailVerification();
      }
    } catch (e) {
      hideLoading();
      notifyError(e.toString());
    }
  }
}
