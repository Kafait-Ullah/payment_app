import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:payment_app/authorizations_screens/home/view/smart_card.dart';
import 'package:payment_app/authorizations_screens/home/view/pay_bills/view/pay.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        key: UniqueKey(),
        body: Column(
          children: [
            Container(
              height: 540,
              width: double.infinity,
              decoration: const BoxDecoration(
                  color: Color(0xff334D8F),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20, left: 10),
                    child: Row(
                      children: [
                        CircleAvatar(
                          backgroundImage:
                              const AssetImage('assets/images/profile.jpg'),
                          radius: size.width * 0.1,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(bottom: 10),
                                child: Text(
                                  'John bold',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: size.width * 0.05,
                                      fontFamily: 'MazzardH-Regular'),
                                ),
                              ),
                              Text(
                                '\$0.00',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: size.width * 0.06,
                                    fontFamily: 'MazzardH-Regular'),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 25, left: 30),
                    child: Text(
                      'Smart cards',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: size.width * 0.06,
                          fontFamily: 'MazzardH-Regular'),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 170,
                    // width: 290,
                    //color: Colors.amber,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        const SizedBox(
                          width: 20,
                        ),
                        SmartCard(size: size),
                        const SizedBox(
                          width: 10,
                        ),
                        SmartCard(size: size),
                        const SizedBox(
                          width: 10,
                        ),
                        SmartCard(size: size),
                        const SizedBox(
                          width: 10,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20, left: 30),
                    child: Text(
                      'Quick actions',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: size.width * 0.06,
                          fontFamily: 'MazzardH-Regular'),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 10, left: 10),
                        child: InkWell(
                          onTap: () => showModalBottomSheet(
                              context: context,
                              builder: (BuildContext context) {
                                return const Pay();
                              }),
                          child: Container(
                            height: 115,
                            width: 115,
                            decoration: BoxDecoration(
                                color: const Color(0xff4060B2),
                                borderRadius: BorderRadius.circular(10)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Icon(
                                  FontAwesomeIcons.solidCreditCard,
                                  color: Color(0xffFFFFFF),
                                ),
                                const SizedBox(height: 5),
                                Text(
                                  'Pay\nbills',
                                  style: TextStyle(
                                      color: const Color(0xffFFFFFF),
                                      fontSize: size.width * 0.05,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'MazzardH-Regular'),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10, left: 10),
                        child: Container(
                          height: 115,
                          width: 115,
                          decoration: BoxDecoration(
                              color: const Color(0xff4060B2),
                              borderRadius: BorderRadius.circular(10)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Icon(
                                FontAwesomeIcons.creditCard,
                                color: Color(0xffFFFFFF),
                              ),
                              const SizedBox(height: 5),
                              Text(
                                'Increase\nbalance',
                                style: TextStyle(
                                    color: const Color(0xffFFFFFF),
                                    fontSize: size.width * 0.05,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'MazzardH-Regular'),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10, left: 10),
                        child: Container(
                          height: 115,
                          width: 115,
                          decoration: BoxDecoration(
                              color: const Color(0xff4060B2),
                              borderRadius: BorderRadius.circular(10)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Icon(
                                FontAwesomeIcons.solidAddressCard,
                                color: Color(0xffFFFFFF),
                              ),
                              const SizedBox(height: 5),
                              Text(
                                'Payment\ntemplates',
                                style: TextStyle(
                                    color: const Color(0xffFFFFFF),
                                    fontSize: size.width * 0.05,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'MazzardH-Regular'),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 30, left: 20),
                      child: Text(
                        'Latest payments',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: const Color(0xff474A56),
                            fontSize: size.width * 0.06,
                            fontFamily: 'MazzardH-Regular'),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 30, right: 12),
                      child: Text(
                        'ALL',
                        style: TextStyle(
                            color: const Color(0xff474A56),
                            fontSize: size.width * 0.05,
                            decoration: TextDecoration.underline,
                            fontFamily: 'MazzardH-Regular'),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Row(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Icon(
                        FontAwesomeIcons.bolt,
                        color: Color(0xffF3D179),
                        size: 40,
                      ),
                    ),
                    const SizedBox(width: 10),
                    Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              'LIGHT',
                              style: TextStyle(
                                  color: const Color(0xff474A56),
                                  fontSize: size.width * 0.05,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'MazzardH-Regular'),
                            ),
                            const SizedBox(width: 150),
                            Text(
                              '\$28.10',
                              style: TextStyle(
                                  color: const Color(0xff474A56),
                                  fontSize: size.width * 0.05,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'MazzardH-Regular'),
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                        Row(
                          children: [
                            Text(
                              'Mastercard **** 3241',
                              style: TextStyle(
                                  color: const Color(0xff8A8A8A),
                                  fontSize: size.width * 0.05,
                                  fontFamily: 'MazzardH-Regular'),
                            ),
                            const SizedBox(width: 10),
                            Text(
                              '12/12/21',
                              style: TextStyle(
                                  color: const Color(0xff8A8A8A),
                                  fontSize: size.width * 0.05,
                                  fontFamily: 'MazzardH-Regular'),
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
