import 'package:flutter/material.dart';
import 'package:payment_app/Component/raised_button.dart';

class Scanner extends StatefulWidget {
  const Scanner({super.key});

  @override
  State<Scanner> createState() => _ScannerState();
}

class _ScannerState extends State<Scanner> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Stack(
      children: [
        Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/scan-back.jpg'),
                  fit: BoxFit.cover)),
        ),
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 10),
              child: Row(
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(
                        Icons.arrow_back_ios_new_outlined,
                        color: Colors.white,
                      )),
                  const Text(
                    'Scan the card',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 19,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'MazzardH-Regular'),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 10),
              child: Text(
                'Place your card inside the rectangle',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    // fontWeight: FontWeight.bold,
                    fontFamily: 'MazzardH-Regular'),
              ),
            ),
            const SizedBox(height: 10),
            Image.asset('assets/images/business-credit.png'),
            const SizedBox(height: 20),
            RisedButton(
              color: const Color(0xff334D8F),
              title: 'Add image',
            )
          ],
        ),
      ],
    )));
  }
}
