import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:payment_app/authorizations_screens/home/view/home.dart';
import 'package:payment_app/authorizations_screens/home/view/profile/view/notifications.dart';
import 'package:payment_app/authorizations_screens/home/view/profile/view/profile.dart';

class DashboardView extends StatefulWidget {
  const DashboardView({super.key});

  @override
  State<DashboardView> createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {
  final PageController _pageController = PageController();
  int currentIndex = 0;
  List<IconData> bottomIcons = [
    FontAwesomeIcons.house,
    FontAwesomeIcons.moneyBill,
    FontAwesomeIcons.bell,
    Icons.verified_user
  ];
  List<String> bottomTitles = ["Home", "Payments", "Notifications", "Profile"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: [
          HomePage(),
          Container(),
          Notifications(),
          Profile(),
        ],
        onPageChanged: (v) {
          setState(() {
            currentIndex = v;
          });
        },
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xff334D8F),
        onPressed: () {},
        child: const Icon(
          FontAwesomeIcons.plus,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: const Color(0xffFFFFFF),
        shape: const CircularNotchedRectangle(),
        notchMargin: 5,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(
            bottomIcons.length,
            (index) => GestureDetector(
              onTap: () {
                print(index);
                _pageController.animateToPage(index,
                    duration: Duration(milliseconds: 200),
                    curve: Curves.linear);
                setState(() {
                  currentIndex = 0;
                });
              },
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  IconButton(
                      visualDensity: VisualDensity.compact,
                      onPressed: null,
                      icon: Icon(bottomIcons[index],
                          color: currentIndex == index
                              ? Color(0xff273B4A)
                              : Color(0xffC8D1E1))),
                  Text(bottomTitles[index])
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
