import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:payment_app/authorizations_screens/login/view/login.dart';
import '../../../Component/raised_button.dart';
import 'package:form_field_validator/form_field_validator.dart';

import 'account_confirmation.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool isPasswordShown = true;
  final _formkey = GlobalKey<FormState>();

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
                    'Create account',
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
                    height: MediaQuery.of(context).size.height * 0.90,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20))),
                    child: Stack(children: [
                      Form(
                        key: _formkey,
                        child: Column(
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
                            Row(
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 30, left: 10),
                                  child: Row(
                                    children: const [
                                      Text(
                                        'Email',
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                            fontFamily: 'MazzardH-Regular'),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextFormField(
                                autovalidateMode:
                                    AutovalidateMode.onUserInteraction,
                                style: const TextStyle(
                                  color: Color(0xff474A56),
                                ),
                                decoration: InputDecoration(
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: const BorderSide(
                                      color: Color(0xffC8D1E1),
                                    ),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: const BorderSide(
                                      color: Color(0xffC8D1E1),
                                    ),
                                  ),
                                  hintText: "Enter your email address",
                                  suffixIcon: const Icon(
                                    FontAwesomeIcons.circleQuestion,
                                    color: Color(0xff474A56),
                                  ),
                                  hintStyle:
                                      const TextStyle(color: Color(0xffC8D1E1)),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                validator: MultiValidator([
                                  RequiredValidator(errorText: 'Required*'),
                                  EmailValidator(
                                      errorText:
                                          'Entered email format is wrong.')
                                ]),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10, left: 10),
                              child: Row(
                                children: const [
                                  Text(
                                    'Phone number',
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                        fontFamily: 'MazzardH-Regular'),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextFormField(
                                autovalidateMode:
                                    AutovalidateMode.onUserInteraction,
                                style: const TextStyle(
                                  color: Color(0xff474A56),
                                ),
                                decoration: InputDecoration(
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: const BorderSide(
                                      color: Color(0xffC8D1E1),
                                    ),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: const BorderSide(
                                      color: Color(0xffC8D1E1),
                                    ),
                                  ),
                                  hintText: "(050) 123 45 67",
                                  hintStyle:
                                      const TextStyle(color: Color(0xffC8D1E1)),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                validator: MultiValidator([
                                  RequiredValidator(errorText: 'Required*')
                                ]),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10, left: 10),
                              child: Row(
                                children: const [
                                  Text(
                                    'Password',
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                        fontFamily: 'MazzardH-Regular'),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextFormField(
                                autovalidateMode:
                                    AutovalidateMode.onUserInteraction,
                                obscureText: isPasswordShown,
                                style: const TextStyle(
                                  color: Color(0xff474A56),
                                ),
                                decoration: InputDecoration(
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: const BorderSide(
                                      color: Color(0xffC8D1E1),
                                    ),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: const BorderSide(
                                      color: Color(0xffC8D1E1),
                                    ),
                                  ),
                                  hintText: "Set password",
                                  suffixIcon: IconButton(
                                    onPressed: () {
                                      setState(() {
                                        isPasswordShown = !isPasswordShown;
                                      });
                                    },
                                    icon: isPasswordShown
                                        ? const Icon(
                                            FontAwesomeIcons.eye,
                                            color: Color(0xff474A56),
                                          )
                                        : const Icon(
                                            FontAwesomeIcons.eyeSlash,
                                            color: Color(0xff474A56),
                                          ),
                                  ),
                                  hintStyle:
                                      const TextStyle(color: Color(0xffC8D1E1)),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                validator: MultiValidator([
                                  RequiredValidator(errorText: 'Required*')
                                ]),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                TextButton(
                                    onPressed: () {},
                                    child: const Text(
                                      'Forgot Password?',
                                      style: TextStyle(
                                          color: Color(0xff474A56),
                                          fontWeight: FontWeight.w500,
                                          fontSize: 14,
                                          decoration: TextDecoration.underline,
                                          fontFamily: 'MazzardH-Regular'),
                                    ))
                              ],
                            ),
                            const SizedBox(height: 50),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text(
                                  "Already have an account?",
                                  style:
                                      TextStyle(fontFamily: 'MazzardH-Regular'),
                                ),
                                TextButton(
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const Login()));
                                    },
                                    child: const Text(
                                      'Login',
                                      style: TextStyle(
                                          color: Color(0xff474A56),
                                          fontWeight: FontWeight.w800,
                                          fontSize: 14,
                                          decoration: TextDecoration.underline,
                                          fontFamily: 'MazzardH-Regular'),
                                    )),
                              ],
                            ),
                            RisedButton(
                              onPress: () {
                                if (_formkey.currentState!.validate()) {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          const AccountConfirm(),
                                    ),
                                  );
                                }
                              },
                              title: 'Continue',
                              color: const Color(0xff334D8F),
                            ),
                          ],
                        ),
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
