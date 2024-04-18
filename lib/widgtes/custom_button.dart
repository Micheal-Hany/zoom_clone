
import 'package:flutter/material.dart';
import 'package:zoom_clone/utils/colors.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key, required this.buttonName, required this.onPressed});
  final String buttonName;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
          backgroundColor: const MaterialStatePropertyAll(buttonColor),
          padding: MaterialStatePropertyAll(EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * .2))),
      child: Text(
        buttonName,
        style: const TextStyle(fontSize: 18, letterSpacing: 1.4),
      ),
    );
  }
}
