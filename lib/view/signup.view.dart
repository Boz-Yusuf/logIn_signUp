import 'package:flutter/material.dart';
import 'package:login_signup/utils/global.colors.dart';
import 'package:login_signup/view/widgets/button.global.dart';
import 'package:login_signup/view/widgets/test.form.global.dart';
import '../utils/global.colors.dart';

class SignUpView extends StatelessWidget {
  SignUpView({Key? key}) : super(key: key);
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController = TextEditingController();

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
              children: <Widget>[
                const SizedBox(
                  height: 100.0,
                ),
                Text(
                  'Sign Up',
                  style: TextStyle(
                      fontSize: 35.0,
                      color: GlobalColors.darkColor2,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Text(
                    'Please enter your information below in order to create a new account',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 16.0, color: GlobalColors.darkColor2),
                  ),
                ),
                const SizedBox(
                      height: 35,
                    ),
                    TextFormGlobal(
                      controller: nameController,
                      text: 'Name',
                      obscure: false,
                      textInputType: TextInputType.name,
                      icon: const Icon(Icons.person),
                      suffix_icon: null,
                    ),
  
                    const SizedBox(
                      height: 20,
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
                    TextFormGlobal(
                      controller: confirmPasswordController,
                      text: 'Confirm Password',
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
                    const ButtonGlobal(text: 'Sign Up',),
                    const SizedBox(
                      height: 30,
                    ),
                    Container(
                      alignment: Alignment.center,
                      child: Text(
                        'Already have an account?',
                        style: TextStyle(color: GlobalColors.darkColor2),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      alignment: Alignment.center,
                      child: Text(
                        'Sign In',
                        style: TextStyle(
                          color: GlobalColors.secondaryColor,
                        ),
                      ),
                    )

              ],
            ),
          ),
        ),
      ),
    );
  }
}
