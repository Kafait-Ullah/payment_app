import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:payment_app/authorizations_screens/home/view/home.dart';
import 'package:payment_app/authorizations_screens/home/view/profile/view/languages.dart';
import 'package:payment_app/authorizations_screens/home/view/profile/view/payment_methods.dart';
import 'package:payment_app/authorizations_screens/home/view/profile/view/personal_details.dart';
import 'package:payment_app/authorizations_screens/home/view/profile/view/profile.dart';
import 'package:payment_app/authorizations_screens/login/view/onboarding.dart';

class Notifications extends StatelessWidget {
  const Notifications({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Nitifications',
                    style: TextStyle(
                        color: Color(0xff474A56),
                        fontFamily: 'MazzardH-Regular',
                        fontSize: 22,
                        fontWeight: FontWeight.bold),
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(FontAwesomeIcons.sliders))
                ],
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: ListTile(
                tileColor: const Color(0xffF8F8FA),
                title: const Text(
                  'Smart card’s balance is about to get to 0. Make your payment.',
                  style: TextStyle(
                      color: Color(0xff474A56),
                      fontFamily: 'MazzardH-Regular',
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
                subtitle: const Text(
                  'today',
                  style: TextStyle(
                    color: Color(0xff474A56),
                    fontFamily: 'MazzardH-Regular',
                    fontSize: 18,
                  ),
                ),
                trailing: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.payment,
                      color: Color(0xff334D8F),
                    )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: ListTile(
                tileColor: const Color(0xffF8F8FA),
                title: const Text(
                  'Smart card’s balance is about to get to 0. Make your payment.',
                  style: TextStyle(
                      color: Color(0xff474A56),
                      fontFamily: 'MazzardH-Regular',
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
                subtitle: const Text(
                  'today',
                  style: TextStyle(
                    color: Color(0xff474A56),
                    fontFamily: 'MazzardH-Regular',
                    fontSize: 18,
                  ),
                ),
                trailing: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.payment,
                      color: Color(0xff334D8F),
                    )),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: ListTile(
                tileColor: Color(0xffF8F8FA),
                title: Text(
                  'Your balance has been incresed.',
                  style: TextStyle(
                      color: Color(0xff474A56),
                      fontFamily: 'MazzardH-Regular',
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  '1 week ago',
                  style: TextStyle(
                    color: Color(0xff474A56),
                    fontFamily: 'MazzardH-Regular',
                    fontSize: 18,
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: ListTile(
                tileColor: Color(0xffF8F8FA),
                title: Text(
                  'Your payment has been proceed.',
                  style: TextStyle(
                      color: Color(0xff474A56),
                      fontFamily: 'MazzardH-Regular',
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  '12/12/21',
                  style: TextStyle(
                    color: Color(0xff474A56),
                    fontFamily: 'MazzardH-Regular',
                    fontSize: 18,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
