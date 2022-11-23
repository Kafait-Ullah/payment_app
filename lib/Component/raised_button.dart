import 'package:flutter/material.dart';

// ignore: must_be_immutable
class RisedButton extends StatelessWidget {
  String? title;
  Color? color;
  VoidCallback? onPress;
  bool? isLoginButton;
  bool? isLoading;

  RisedButton(
      {Key? key,
      this.title,
      this.onPress,
      this.isLoginButton,
      this.color,
      this.isLoading = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        height: 50,
        width: 350,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Stack(
          children: [
            Visibility(
              visible: isLoading! ? false : true,
              child: Center(
                child: Text(
                  title ?? "Button",
                  style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.white,
                      fontFamily: 'MazzardH-Regular'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
