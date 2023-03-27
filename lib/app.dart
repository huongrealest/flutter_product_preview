import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:preview/common/theme/app_themes.dart';
import 'package:preview/modules/auth/login/login_screen.dart';

class App extends StatelessWidget {
  const App({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Product Preview',
      debugShowCheckedModeBanner: false,
      theme: AppThemes.appTheme,
    
      home: const LoginScreen(),
    );
  }
}
