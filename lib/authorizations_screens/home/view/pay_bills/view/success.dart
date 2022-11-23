import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:payment_app/Component/raised_button.dart';

class Success extends StatelessWidget {
  const Success({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                          bottomRight: Radius.circular(10)))),
              Positioned(
                top: 30,
                left: 10,
                child: InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: const Icon(
                      FontAwesomeIcons.redRiver,
                      color: Colors.white,
                    )),
              ),
              Positioned(
                top: 30,
                right: 10,
                child: InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: const Icon(
                      Icons.close,
                      color: Colors.white,
                    )),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 50),
                child: Center(
                    child: Icon(
                  Icons.check_circle,
                  size: 90,
                  color: Colors.white,
                )),
              ),
              const Center(
                child: Padding(
                  padding: EdgeInsets.only(top: 170),
                  child: Text(
                    'Your payment\nwas successful!',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'MazzardH-Regular'),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Padding(
                  padding: EdgeInsets.only(top: 20, right: 120, bottom: 20),
                  child: Text(
                    'Pay with template',
                    style: TextStyle(
                        color: Color(0xff474A56),
                        fontSize: 19,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'MazzardH-Regular'),
                  ),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(
              left: 10,
              right: 260,
            ),
            child: Text(
              'CATEGORY',
              style: TextStyle(
                  color: Color(0xff8A8A8A),
                  fontSize: 16,
                  fontFamily: 'MazzardH-Regular'),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: TextField(
                readOnly: true,
                decoration: InputDecoration(
                    isDense: true,
                    hintText: 'Light',
                    hintStyle: TextStyle(
                        color: Color(0xff474A56),
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'MazzardH-Regular'),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey, width: 0.3),
                    ))),
          ),
          const SizedBox(
            height: 15,
          ),
          const Padding(
            padding: EdgeInsets.only(
              left: 10,
              right: 260,
            ),
            child: Text(
              'SMART CarD',
              style: TextStyle(
                  color: Color(0xff8A8A8A),
                  fontSize: 16,
                  fontFamily: 'MazzardH-Regular'),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: TextField(
                readOnly: true,
                decoration: InputDecoration(
                    isDense: true,
                    hintText: 'Azərişıq  (A8716ZJA1)',
                    hintStyle: TextStyle(
                        color: Color(0xff474A56),
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'MazzardH-Regular'),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey, width: 0.3),
                    ))),
          ),
          const SizedBox(
            height: 15,
          ),
          const Padding(
            padding: EdgeInsets.only(
              left: 10,
              right: 200,
            ),
            child: Text(
              'PAYMENT METHOD',
              style: TextStyle(
                  color: Color(0xff8A8A8A),
                  fontSize: 16,
                  fontFamily: 'MazzardH-Regular'),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: TextField(
                readOnly: true,
                decoration: InputDecoration(
                    prefixIcon: Icon(
                      FontAwesomeIcons.ccMastercard,
                      color: Color(0xffF3D179),
                    ),
                    isDense: true,
                    hintText: '**** 1234 ',
                    hintStyle: TextStyle(
                        color: Color(0xff474A56),
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'MazzardH-Regular'),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey, width: 0.3),
                    ))),
          ),
          const SizedBox(
            height: 15,
          ),
          const Padding(
            padding: EdgeInsets.only(
              left: 10,
              right: 290,
            ),
            child: Text(
              'AMOUNT',
              style: TextStyle(
                  color: Color(0xff8A8A8A),
                  fontSize: 16,
                  fontFamily: 'MazzardH-Regular'),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: TextField(
                readOnly: true,
                decoration: InputDecoration(
                    isDense: true,
                    hintText: '\$134',
                    hintStyle: TextStyle(
                        color: Color(0xff474A56),
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'MazzardH-Regular'),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey, width: 0.3),
                    ))),
          ),
          const SizedBox(
            height: 15,
          ),
          const Padding(
            padding: EdgeInsets.only(
              left: 10,
              right: 240,
            ),
            child: Text(
              'PAYMENT DATE',
              style: TextStyle(
                  color: Color(0xff8A8A8A),
                  fontSize: 16,
                  fontFamily: 'MazzardH-Regular'),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: TextField(
                readOnly: true,
                decoration: InputDecoration(
                    isDense: true,
                    hintText: '13 Jul, 11:17',
                    hintStyle: TextStyle(
                        color: Color(0xff474A56),
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'MazzardH-Regular'),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey, width: 0.3),
                    ))),
          ),
          const SizedBox(
            height: 5,
          ),
          RisedButton(
            color: const Color(0xff334D8F),
          )
        ],
      ),
    );
  }
}
