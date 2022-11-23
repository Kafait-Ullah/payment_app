import 'package:flutter/material.dart';

class OtpInput extends StatelessWidget {
  // final TextEditingController controller;
  // final bool autoFocus;
  final String text;

  const OtpInput({super.key, required this.text});
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 50,
        width: 60,
        decoration: BoxDecoration(
            border: Border.all(), borderRadius: BorderRadius.circular(12)),
        child: Center(child: Text(text)));
  }
}
