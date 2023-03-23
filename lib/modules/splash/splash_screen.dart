import 'package:flutter/material.dart';
import 'package:preview/resource/asset_path.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(
          AssetPath.sunflower,
        ),
      ),
    );
  }
}
