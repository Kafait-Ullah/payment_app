import 'package:flutter/material.dart';
import 'package:payment_app/Component/raised_button.dart';
import 'package:payment_app/authorizations_screens/login/view/login.dart';
import 'package:payment_app/authorizations_screens/signup/view/signup.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({super.key});

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              width: double.infinity,
              height: 500,
              decoration: const BoxDecoration(
                  color: Color(0xff334D8F),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20))),
              child: Stack(children: const [
                Padding(
                  padding: EdgeInsets.only(top: 20, left: 100),
                  child: Text(
                    'SmartPul',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'MazzardH-Regular'),
                  ),
                )
              ]),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 15),
              child: Text(
                "   Now payments are\n\"Smarte\" than you think",
                style: TextStyle(fontSize: 20, fontFamily: 'MazzardH-Regular'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: RisedButton(
                onPress: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const SignUp()),
                  );
                },
                title: 'SigUp',
                color: const Color(0xff334D8F),
              ),
            ),
            TextButton(
              onPressed: (() {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Login()),
                );
              }),
              child: const Text(
                'Login',
                style: TextStyle(
                    color: Color(0xff334D8F),
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'MazzardH-Regular'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
