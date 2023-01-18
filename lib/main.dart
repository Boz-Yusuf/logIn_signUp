import 'package:flutter/material.dart';
import 'package:login_signup/utils/global.colors.dart';
import 'package:login_signup/view/splash.view.dart';
import 'package:get/get.dart';
void main() {
  runApp(const App());
}
class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashView(),
      theme: ThemeData(primarySwatch: Colors.grey),
    );
  }
}