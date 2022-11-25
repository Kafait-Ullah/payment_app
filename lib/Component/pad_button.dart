import 'package:flutter/material.dart';

class PadButton extends StatelessWidget {
  final String title;
  final Color color;
  final IconData? sicon;
  final VoidCallback onPress;
  const PadButton(
      {super.key,
      this.title = '0',
      this.sicon,
      this.color = Colors.grey,
      required this.onPress});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: onPress,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 80,
            decoration: const BoxDecoration(
              color: Color(0xffF8F8FA),
              shape: BoxShape.rectangle,
            ),
            child: Center(
              child: sicon != null
                  ? Icon(sicon)
                  : Text(
                      title,
                      style: const TextStyle(
                          fontSize: 19, fontFamily: 'MazzardH-Regular'),
                    ),
            ),
          ),
        ),
      ),
    );
  }
}
