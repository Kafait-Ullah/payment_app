import 'package:flutter/material.dart';

class OtpInput extends StatelessWidget {
  final String text;

  const OtpInput({super.key, required this.text});
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 50,
        width: 70,
        decoration: BoxDecoration(
            border: Border.all(), borderRadius: BorderRadius.circular(10)),
        child: Center(child: Text(text)));
  }
}

// import 'package:flutter/material.dart';

// class OptInput extends StatelessWidget {
//   const OptInput({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 30,
//       width: 20,
//       decoration: BoxDecoration(
//           border: Border.all(),
//           borderRadius: const BorderRadius.all(Radius.circular(10))),
//     );
//   }
// }
