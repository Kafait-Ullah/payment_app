import 'package:flutter/material.dart';
import 'package:payment_app/Component/raised_button.dart';

class Languages extends StatelessWidget {
  const Languages({super.key});

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
                    'Language',
                    style: TextStyle(
                        color: const Color(0xff474A56),
                        fontFamily: 'MazzardH-Regular',
                        fontSize: size.height * 0.03,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: size.height * 0.04,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: size.width * 0.04),
              child: const ListTile(
                tileColor: Color(0xffF8F8FA),
                leading: Icon(
                  Icons.flag,
                  color: Colors.red,
                  size: 20,
                ),
                title: Text(
                  'Azərbaycan dili',
                  style: TextStyle(
                      color: Color(0xff474A56),
                      fontSize: 15,
                      fontFamily: 'MazzardH-Regular'),
                ),
              ),
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: size.width * 0.04),
              child: const ListTile(
                tileColor: Color(0xffF8F8FA),
                leading: Icon(
                  Icons.flag,
                  color: Color(0xff334D8F),
                  size: 20,
                ),
                title: Text(
                  'Pусский',
                  style: TextStyle(
                      color: Color(0xff474A56),
                      fontSize: 15,
                      fontFamily: 'MazzardH-Regular'),
                ),
              ),
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: size.width * 0.04),
              child: const ListTile(
                tileColor: Color(0xffF8F8FA),
                leading: Icon(
                  Icons.flag_circle,
                  color: Colors.green,
                  size: 20,
                ),
                title: Text(
                  'English',
                  style: TextStyle(
                      color: Color(0xff474A56),
                      fontSize: 15,
                      fontFamily: 'MazzardH-Regular'),
                ),
              ),
            ),
            SizedBox(height: size.height * 0.50),
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
