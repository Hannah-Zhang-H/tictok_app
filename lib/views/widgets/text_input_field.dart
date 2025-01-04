import 'package:flutter/material.dart';
import 'package:tictok_app/constants.dart';

class TextInputField extends StatelessWidget {
  final IconData icon;
  final String hintText;
  final TextEditingController controller;
  final bool isObscure;

  const TextInputField(
      {super.key,
      required this.icon,
      required this.hintText,
      required this.controller,
      this.isObscure = false});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          prefixIcon: Icon(icon),
          hintText: hintText,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: borderColor),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(color: focusColor, width: 5),
          )),

      // !If the input is password, then need to be obscured
      obscureText: isObscure,
    );
  }
}
