import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:preview/modules/auth/login/login_controller.dart';
import 'package:preview/resource/app_text_styles.dart';
import 'package:preview/resource/asset_path.dart';
import 'package:preview/resource/gaps.dart';
import 'package:preview/utils/helpers/validator.dart';
import 'package:preview/utils/ui/system_chrome_extension.dart';
import 'package:preview/widgets/buttons/fill_button.dart';
import 'package:preview/widgets/outline_text_form_field.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(LoginController());
    return GestureDetector(
      onTap: SystemChromeExtension.hideKeyboardIfVisible,
      child: Scaffold(
        body: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Form(
            key: controller.form,
            child: Column(
              children: [
                SizedBox(
                  height: Get.height * 0.2,
                ),
                Image.asset(AssetPath.sunflower),
                OutlineTextFormField(
                  label: 'Email',
                  controller: controller.txtUserName,
                  validator: Validator.requiredInputEmailValidator,
                ),
                Gaps.vGap8,
                OutlineTextFormField(
                  label: 'Mật khẩu',
                  controller: controller.txtPwd,
                  validator: Validator.inputPasswordValidator,
                ),
                Gaps.vGap4,
                const Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    'Quên mật khẩu',
                    style: AppTextStyles.textButton,
                  ),
                ),
                Gaps.vGap16,
                FillButton(
                  text: 'Đăng nhập',
                  width: double.infinity,
                  onPressed: controller.login,
                ),
                Gaps.vGap16,
                const Text(
                  'Đăng ký ngay',
                  style: AppTextStyles.textButton,
                ),
                Gaps.vGap16,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
