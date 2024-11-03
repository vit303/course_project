import 'package:flutter/material.dart';

class LoginTextField extends StatelessWidget{
  final String hintText;
  final bool obscureText;
  final TextEditingController controller;
  final FocusNode? focusNode;
  final TextStyle? style;
const LoginTextField({
    super.key,
    required this.hintText,
    required this.obscureText,
    required this.controller,
    this.style, this.focusNode,
  });


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: TextField(
        obscureText: obscureText,
        style: TextStyle(color: Colors.black),
        controller: controller,
        focusNode: focusNode,
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Theme.of(context).colorScheme.tertiary)
          ),
          focusedBorder: OutlineInputBorder(
            borderSide:BorderSide(color: Theme.of(context).colorScheme.primary)
          ),
          fillColor: Theme.of(context).colorScheme.secondary,
          filled: true,
          hintText: hintText,
          hintStyle: TextStyle(color: Theme.of(context).colorScheme.primary)
        ),
      ),
    );
  }

}