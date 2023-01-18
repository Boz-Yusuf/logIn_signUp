import 'package:flutter/material.dart';
import 'package:login_signup/utils/global.colors.dart';

class ButtonGlobal extends StatelessWidget {
  const ButtonGlobal({
    Key? key,
    required this.text,
  }) : super(key: key);
  final String text;
  
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        print('Signın');
      },
      child: Container(
        alignment: Alignment.center,
        height: 50.0,
        decoration: BoxDecoration(
            color: GlobalColors.mainColor,
            borderRadius: BorderRadius.circular(6),
            boxShadow: const [
              BoxShadow(
                color: Colors.black,
                blurRadius: 10,
              )
            ]),
        child: Text(
          text,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
