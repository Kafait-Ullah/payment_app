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
  List<String> inputValue = [];
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
                    'Application password',
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
                          const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            child: Text(
                              "Please, set password for the application\n               for security purposes:",
                              style: TextStyle(
                                  fontSize: 18, fontFamily: 'MazzardH-Regular'),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: List.generate(4, (index) {
                              return OtpInput(
                                text: inputValue.length > index
                                    ? inputValue[index]
                                    : "",
                              );
                            }),
                          ),
                          Row(
                            children: List.generate(
                              3,
                              (index) => PadButton(
                                title: (index + 1).toString(),
                                onPress: () {
                                  setState(() {
                                    if (inputValue.length < 4) {
                                      inputValue.add((index + 1).toString());
                                    }
                                  });
                                },
                              ),
                            ),
                          ),
                          Row(
                            children: List.generate(
                              3,
                              (index) => PadButton(
                                title: (index + 4).toString(),
                                onPress: () {
                                  setState(() {
                                    if (inputValue.length < 4) {
                                      inputValue.add((index + 4).toString());
                                    }
                                  });
                                },
                              ),
                            ),
                          ),
                          Row(
                            children: List.generate(
                              3,
                              (index) => PadButton(
                                title: (index + 7).toString(),
                                onPress: () {
                                  setState(() {
                                    if (inputValue.length < 4) {
                                      inputValue.add((index + 7).toString());
                                    }
                                  });
                                },
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(right: 130, left: 130),
                            child: Row(
                                children: List.generate(
                              1,
                              (index) => PadButton(
                                title: (index + 0).toString(),
                                onPress: () {
                                  setState(() {
                                    if (inputValue.length < 2) {
                                      inputValue.add((index + 0).toString());
                                    }
                                  });
                                },
                              ),
                            )),
                          ),
                          TextButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const Login()));
                              },
                              child: const Text(
                                'Continue without password',
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
