import 'package:flutter/material.dart';



class TextFormGlobal extends StatelessWidget {
  const TextFormGlobal(
      {Key? key,
      required this.controller,
      required this.text,
      required this.textInputType,
      required this.obscure,
      required this.icon,
      required this.suffix_icon})
      : super(key: key);
  final TextEditingController controller;
  final String text;
  final TextInputType textInputType;
  final bool obscure;
  final Icon icon;
  final suffix_icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      padding: EdgeInsets.all(13.0),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(6),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 7,
            )
          ]),
      child: TextFormField(
        
        controller: controller,
        keyboardType: textInputType,
        obscureText: obscure,
        decoration: InputDecoration(
          prefixIcon: icon,
          suffixIcon: suffix_icon ,
          hintText: text,
          border: InputBorder.none,
          contentPadding: const EdgeInsets.all(0),
        ),
      ),
    );
  }
}
