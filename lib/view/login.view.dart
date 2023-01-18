import 'package:flutter/material.dart';
import 'package:login_signup/view/widgets/button.global.dart';
import 'package:login_signup/view/widgets/test.form.global.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:login_signup/utils/global.colors.dart';

class LoginView extends StatelessWidget {
  LoginView({Key? key}) : super(key: key);
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: GlobalColors.whiteColor,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const SizedBox(
                  height: 100,
                ),
                Container(
                  alignment: Alignment.center,
                  child: Text(
                    'Sign In Now',
                    style: TextStyle(
                      fontSize: 35,
                      color: GlobalColors.darkColor2,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 30,
                    ),
                    Container(
                      alignment: Alignment.center,
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 25.0),
                        child: Text(
                          'Please enter your information below in order to login your account',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: GlobalColors.darkColor2,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    TextFormGlobal(
                      controller: emailController,
                      text: 'Email',
                      obscure: false,
                      textInputType: TextInputType.emailAddress,
                      icon: const Icon(Icons.email),
                      suffix_icon: null,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextFormGlobal(
                      controller: passwordController,
                      text: 'Password',
                      obscure: true,
                      textInputType: TextInputType.visiblePassword,
                      icon: const Icon(Icons.password),
                      suffix_icon: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.remove_red_eye_sharp)),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const ButtonGlobal(text:'Sign In' ,),
                    const SizedBox(
                      height: 30,
                    ),
                    Container(
                      alignment: Alignment.center,
                      child: Text(
                        'Don\'t have an account?',
                        style: TextStyle(color: GlobalColors.darkColor2),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      alignment: Alignment.center,
                      child: Text(
                        'Sign Up',
                        style: TextStyle(
                          color: GlobalColors.secondaryColor,
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
