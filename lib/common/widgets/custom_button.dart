import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  final Color bgcolor;
  final Color fgcolor;

  const CustomButton(
      {super.key,
      required this.text,
      required this.onTap,
      required this.bgcolor,
      required this.fgcolor});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        child: Text(text),
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
            minimumSize: const Size(double.infinity, 50),
            backgroundColor: bgcolor,
            foregroundColor: fgcolor,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5))));
  }
}
