import 'package:flutter/material.dart';
import 'package:payment_app/Component/raised_button.dart';

class PersonalDetails extends StatelessWidget {
  const PersonalDetails({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                  top: size.height * 0.06,
                  left: size.width * 0.03,
                  right: size.width * 0.03),
              child: Row(
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(
                        Icons.arrow_back_ios_new_outlined,
                        color: Color(0xff474A56),
                      )),
                  SizedBox(width: size.width * 0.02),
                  Text(
                    'Personal details',
                    style: TextStyle(
                        color: const Color(0xff474A56),
                        fontFamily: 'MazzardH-Regular',
                        fontSize: size.height * 0.03,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: size.width * 0.20,
                  ),
                  const Icon(Icons.edit)
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: size.width * 0.05,
                  bottom: size.width * 0.03,
                  top: size.width * 0.07),
              child: Row(
                children: [
                  Text(
                    'Name & surname',
                    style: TextStyle(
                      color: const Color(0xff474A56),
                      fontFamily: 'MazzardH-Regular',
                      fontWeight: FontWeight.bold,
                      fontSize: size.height * 0.02,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
              child: TextFormField(
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: const BorderSide(color: Colors.grey)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide:
                              const BorderSide(color: Color(0xff474A56))),
                      hintText: 'Aydın Səfərov')),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: size.width * 0.05,
                  bottom: size.width * 0.03,
                  top: size.width * 0.07),
              child: Row(
                children: [
                  Text(
                    'Email',
                    style: TextStyle(
                      color: const Color(0xff474A56),
                      fontFamily: 'MazzardH-Regular',
                      fontWeight: FontWeight.bold,
                      fontSize: size.height * 0.02,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
              child: TextFormField(
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: const BorderSide(color: Colors.grey)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide:
                              const BorderSide(color: Color(0xff474A56))),
                      hintText: 'abc@gmail.com')),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: size.width * 0.05,
                  bottom: size.width * 0.03,
                  top: size.width * 0.07),
              child: Row(
                children: [
                  Text(
                    'Phone number',
                    style: TextStyle(
                      color: const Color(0xff474A56),
                      fontFamily: 'MazzardH-Regular',
                      fontWeight: FontWeight.bold,
                      fontSize: size.height * 0.02,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
              child: TextFormField(
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: const BorderSide(color: Colors.grey)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide:
                              const BorderSide(color: Color(0xff474A56))),
                      hintText: '(050) 123 45 67')),
            ),
            Padding(
              padding: EdgeInsets.only(
                  top: size.width * 0.08, left: size.width * 0.05),
              child: Row(
                children: [
                  InkWell(
                    onTap: () {},
                    child: Text(
                      'Reset password',
                      style: TextStyle(
                          decoration: TextDecoration.underline,
                          color: const Color(0xff334D8F),
                          fontSize: size.width * 0.05,
                          fontFamily: 'MazzardH-Regular'),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: size.height * 0.27),
            RisedButton(
              color: const Color(0xff334D8F),
              title: 'Apply',
            )
          ],
        ),
      ),
    );
  }
}
