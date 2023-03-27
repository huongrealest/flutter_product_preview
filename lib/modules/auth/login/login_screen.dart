import 'package:flutter/material.dart';
import 'package:preview/resource/asset_path.dart';
import 'package:preview/resource/gaps.dart';
import 'package:preview/utils/ui/system_chrome_extension.dart';
import 'package:preview/widgets/buttons/fill_button.dart';
import 'package:preview/widgets/outline_text_form_field.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: SystemChromeExtension.hideKeyboardIfVisible,
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              Gaps.vGap80,
              Image.asset(AssetPath.sunflower),
              OutlineTextFormField(
                label: 'Số điện thoại',
              ),
              Gaps.vGap16,
              FillButton(
                text: 'Đăng nhập',
                width: double.infinity,
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
