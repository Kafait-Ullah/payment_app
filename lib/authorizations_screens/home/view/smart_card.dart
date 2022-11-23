import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SmartCard extends StatelessWidget {
  const SmartCard({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 170,
      width: 310,
      decoration: BoxDecoration(
          color: const Color(0xffFFFFFF),
          borderRadius: BorderRadius.circular(15)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 15, top: 20),
            child: Text(
              'A8716ZJA1',
              style: TextStyle(
                  color: const Color(0xff8A8A8A),
                  fontSize: size.width * 0.04,
                  fontFamily: 'MazzardH-Regular'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, top: 1),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'LIGHT',
                  style: TextStyle(
                      color: const Color(0xff474A56),
                      fontSize: size.width * 0.06,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'MazzardH-Regular'),
                ),
                const Padding(
                  padding: EdgeInsets.only(right: 20),
                  child: Icon(
                    FontAwesomeIcons.bolt,
                    color: Color(0xffF3D179),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Text(
                  'BALANCE',
                  style: TextStyle(
                      color: const Color(0xff8A8A8A),
                      fontSize: size.width * 0.05,
                      fontFamily: 'MazzardH-Regular'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 15),
                child: Text(
                  'DEBT',
                  style: TextStyle(
                      color: const Color(0xff8A8A8A),
                      fontSize: size.width * 0.05,
                      fontFamily: 'MazzardH-Regular'),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15, top: 1),
                child: Text(
                  '13.20 \$',
                  style: TextStyle(
                      color: const Color(0xff334D8F),
                      fontSize: size.width * 0.07,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'MazzardH-Regular'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 15, top: 1),
                child: Text(
                  '0.20 \$',
                  style: TextStyle(
                      color: const Color(0xffFF5959),
                      fontSize: size.width * 0.07,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'MazzardH-Regular'),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
