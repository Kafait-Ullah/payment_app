import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:payment_app/authorizations_screens/home/view/home.dart';
import 'package:payment_app/authorizations_screens/home/view/profile/view/languages.dart';
import 'package:payment_app/authorizations_screens/home/view/profile/view/notifications.dart';
import 'package:payment_app/authorizations_screens/home/view/profile/view/payment_methods.dart';
import 'package:payment_app/authorizations_screens/home/view/profile/view/personal_details.dart';
import 'package:payment_app/authorizations_screens/login/view/onboarding.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 250,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                      color: Color(0xff334D8F),
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10))),
                ),
                const Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Icon(
                    FontAwesomeIcons.circleQuestion,
                    color: Colors.white,
                  ),
                ),
                Center(
                  child: Column(
                    children: const [
                      SizedBox(height: 20),
                      CircleAvatar(
                        radius: 45,
                        backgroundImage: AssetImage(
                          'assets/images/profile.jpg',
                        ),
                      ),
                      SizedBox(height: 20),
                      Text(
                        'Emma Watson',
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'MazzardH-Regular',
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 10),
                      Text(
                        '\$0.00',
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'MazzardH-Regular',
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                )
              ],
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: ListTile(
                tileColor: const Color(0xffF8F8FA),
                title: const Text(
                  'Personal details',
                  style: TextStyle(
                      color: Color(0xff474A56),
                      fontFamily: 'MazzardH-Regular',
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
                trailing: IconButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          return const PersonalDetails();
                        },
                      ));
                    },
                    icon: const Icon(
                      Icons.arrow_forward_ios_outlined,
                      color: Color(0xff474A56),
                    )),
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: ListTile(
                tileColor: const Color(0xffF8F8FA),
                title: const Text(
                  'Payment methods',
                  style: TextStyle(
                      color: Color(0xff474A56),
                      fontFamily: 'MazzardH-Regular',
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
                trailing: IconButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          return const PaymentMethods();
                        },
                      ));
                    },
                    icon: const Icon(
                      Icons.arrow_forward_ios_outlined,
                      color: Color(0xff474A56),
                    )),
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: ListTile(
                tileColor: const Color(0xffF8F8FA),
                title: const Text(
                  'Language',
                  style: TextStyle(
                      color: Color(0xff474A56),
                      fontFamily: 'MazzardH-Regular',
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
                trailing: IconButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          return Languages();
                        },
                      ));
                    },
                    icon: const Icon(
                      Icons.arrow_forward_ios_outlined,
                      color: Color(0xff474A56),
                    )),
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: ListTile(
                tileColor: const Color(0xffF8F8FA),
                title: const Text(
                  'Notification',
                  style: TextStyle(
                      color: Color(0xff474A56),
                      fontFamily: 'MazzardH-Regular',
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
                trailing: IconButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          return const Notifications();
                        },
                      ));
                    },
                    icon: const Icon(
                      Icons.arrow_forward_ios_outlined,
                      color: Color(0xff474A56),
                    )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40, left: 20),
              child: Row(
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: ((context) {
                          return const OnBoarding();
                        })));
                      },
                      icon: const Icon(
                        Icons.logout_outlined,
                        color: Color(0xff334D8F),
                      )),
                  const SizedBox(width: 10),
                  const Text(
                    'Sign out',
                    style: TextStyle(
                        color: Color(0xff334D8F),
                        fontFamily: 'MazzardH-Regular',
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
