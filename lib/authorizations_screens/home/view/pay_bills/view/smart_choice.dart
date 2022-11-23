import 'package:flutter/material.dart';
import 'package:payment_app/authorizations_screens/home/view/pay_bills/view/currency.dart';

import '../../../../../Component/raised_button.dart';

class SmartCardChoice extends StatelessWidget {
  const SmartCardChoice({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(topLeft: Radius.circular(20))),
      height: 500,
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Padding(
                padding:
                    EdgeInsets.only(top: 20, left: 10, right: 10, bottom: 20),
                child: Text(
                  'Choose smart card',
                  style: TextStyle(
                      color: Color(0xff474A56),
                      fontSize: 19,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'MazzardH-Regular'),
                ),
              ),
              InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: const Icon(
                    Icons.close,
                    color: Color(0xffC8D1E1),
                  )),
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(top: 20, left: 10, right: 260, bottom: 10),
            child: Text(
              'SMART CARDS',
              style: TextStyle(
                  color: Color(0xff8A8A8A),
                  fontSize: 16,
                  fontFamily: 'MazzardH-Regular'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              shape: RoundedRectangleBorder(
                side: const BorderSide(width: 1),
                borderRadius: BorderRadius.circular(10),
              ),
              onTap: () {},
              tileColor: const Color(0xffF8F8FA),
              title: const Text(
                'SmartCard 1',
                style: TextStyle(
                    color: Color(0xff474A56),
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    fontFamily: 'MazzardH-Regular'),
              ),
              trailing: const Text(
                'A8716ZJA1',
                style: TextStyle(
                    color: Color(0xffC8D1E1),
                    fontSize: 16,
                    fontFamily: 'MazzardH-Regular'),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              onTap: () {},
              tileColor: const Color(0xffF8F8FA),
              title: const Text(
                'SmartCard 2',
                style: TextStyle(
                    color: Color(0xff474A56),
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    fontFamily: 'MazzardH-Regular'),
              ),
              trailing: const Text(
                'A8716ZJA1',
                style: TextStyle(
                    color: Color(0xffC8D1E1),
                    fontSize: 15,
                    fontFamily: 'MazzardH-Regular'),
              ),
            ),
          ),
          const SizedBox(height: 120),
          RisedButton(
            onPress: () {
              Navigator.pop(context);
              showModalBottomSheet(
                  context: context, builder: ((context) => const Currency()));
            },
            color: const Color(0xff334D8F),
            title: 'Continue',
          )
        ],
      ),
    );
  }
}
