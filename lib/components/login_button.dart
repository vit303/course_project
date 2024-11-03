import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LoginButton extends StatelessWidget{
  final String text;
  final void Function()? onTap;

  const LoginButton({
    super.key,
    required this.text,
    required this.onTap
    }); 

  @override
  Widget build(BuildContext context) {
    
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.secondary,
          borderRadius: BorderRadius.circular(8)
        ),
        padding: const EdgeInsets.all(25),
        margin: const EdgeInsets.symmetric(horizontal: 25.0),
        child: Center(
          child: Text(text),
        ),
      ),
    );
  }

}