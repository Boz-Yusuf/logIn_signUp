import 'dart:async';
import 'package:hexcolor/hexcolor.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_signup/view/login.view.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:login_signup/utils/global.colors.dart';
import 'package:login_signup/view/signup.view.dart';

import 'flow.view.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 1), () {
     Get.to(LoginView());
    });
    return  Scaffold(
      backgroundColor: GlobalColors.whiteColor,
      body: Center(
        child: Text(
          'My Band',
          style: TextStyle(
            color: GlobalColors.mainColor,
            fontSize: 35,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
