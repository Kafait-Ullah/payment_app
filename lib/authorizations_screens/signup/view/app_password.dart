// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:payment_app/Component/otp_input.dart';
import 'package:payment_app/Component/pad_button.dart';
import 'package:payment_app/authorizations_screens/login/view/login.dart';

class AppPassword extends StatefulWidget {
  const AppPassword({super.key});

  @override
  State<AppPassword> createState() => _AccountConfirmState();
}

class _AccountConfirmState extends State<AppPassword> {
  var inputValue = '';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xff334D8F),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 50),
                child: Align(
                  child: Text(
                    textAlign: TextAlign.center,
                    'Application Password',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontFamily: 'MazzardH-Regular'),
                  ),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    height: 670,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20))),
                    child: Stack(children: [
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                InkWell(
                                    onTap: () {
                                      Navigator.pop(context);
                                    },
                                    child: const Icon(
                                      Icons.close,
                                      color: Color(0xffC8D1E1),
                                    ))
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            "Please, enter the OTP code sent to\n             +994 (50) *** ** 67:",
                            style: TextStyle(
                                fontSize: 17, fontFamily: 'MazzardH-Regular'),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              // ignore: prefer_const_literals_to_create_immutables
                              children: [
                                OtpInput(
                                  text: "1",
                                ),
                                OtpInput(
                                  text: "2",
                                ),
                                OtpInput(
                                  text: "5",
                                ),
                                OtpInput(
                                  text: "6",
                                ),
                              ],
                            ),
                          ),
                          Row(
                            children: [
                              PadButton(
                                title: '1',
                                onPress: () {
                                  inputValue = '1';
                                  setState(() {});
                                },
                              ),
                              PadButton(
                                title: '2',
                                onPress: () {
                                  inputValue = '2';
                                  setState(() {});
                                },
                              ),
                              PadButton(
                                title: '3',
                                onPress: () {
                                  inputValue = '3';
                                  setState(() {});
                                },
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              PadButton(
                                title: '4',
                                onPress: () {
                                  inputValue = '4';
                                  setState(() {});
                                },
                              ),
                              PadButton(
                                title: '5',
                                onPress: () {
                                  inputValue = '5';
                                  setState(() {});
                                },
                              ),
                              PadButton(
                                title: '6',
                                onPress: () {
                                  inputValue = '6';
                                  setState(() {});
                                },
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              PadButton(
                                title: '7',
                                onPress: () {
                                  inputValue = '7';
                                  setState(() {});
                                },
                              ),
                              PadButton(
                                title: '8',
                                onPress: () {
                                  inputValue = '8';
                                  setState(() {});
                                },
                              ),
                              PadButton(
                                title: '9',
                                onPress: () {
                                  inputValue = '9';
                                  setState(() {});
                                },
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              PadButton(
                                title: '',
                                onPress: () {
                                  inputValue = '';
                                  setState(() {});
                                },
                              ),
                              PadButton(
                                title: '0',
                                onPress: () {
                                  inputValue = '0';
                                  setState(() {});
                                },
                              ),
                              PadButton(
                                sicon: (Icons.backspace),
                                color: Colors.red,
                                onPress: () {},
                              ),
                            ],
                          ),
                          TextButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const Login()));
                              },
                              child: const Text(
                                'Continue with password',
                                style: TextStyle(
                                    color: Color(0xff474A56),
                                    fontWeight: FontWeight.w800,
                                    fontSize: 19,
                                    decoration: TextDecoration.underline,
                                    fontFamily: 'MazzardH-Regular'),
                              )),
                        ],
                      ),
                    ]),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
