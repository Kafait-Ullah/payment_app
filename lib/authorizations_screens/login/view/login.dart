import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:payment_app/authorizations_screens/home/view/dashboard.dart';
import 'package:payment_app/authorizations_screens/signup/view/signup.dart';
import '../../../Component/raised_button.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool isPasswordShown = true;
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
                    'Log In',
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
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 30, left: 10),
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
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                ),
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
                            const SizedBox(height: 150),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text(
                                  "Don't you have an account?",
                                  style:
                                      TextStyle(fontFamily: 'MazzardH-Regular'),
                                ),
                                TextButton(
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const SignUp()));
                                    },
                                    child: const Text(
                                      'Sign Up',
                                      style: TextStyle(
                                          color: Color(0xff474A56),
                                          fontWeight: FontWeight.w800,
                                          fontSize: 14,
                                          decoration: TextDecoration.underline,
                                          fontFamily: 'MazzardH-Regular'),
                                    ))
                              ],
                            ),
                            RisedButton(
                              onPress: () {
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const DashboardView()),
                                );
                              },
                              title: 'Login',
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
