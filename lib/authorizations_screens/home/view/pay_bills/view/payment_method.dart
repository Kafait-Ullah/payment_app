import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:payment_app/authorizations_screens/home/view/pay_bills/view/add_new_card.dart';

import '../../../../../Component/raised_button.dart';

class PaymentMethod extends StatelessWidget {
  const PaymentMethod({
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
                  'Chose payment method',
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
            padding: EdgeInsets.only(top: 20, left: 10, right: 240, bottom: 10),
            child: Text(
              'EXISTING CARDS',
              style: TextStyle(
                  color: Color(0xff8A8A8A),
                  fontSize: 16,
                  fontFamily: 'MazzardH-Regular'),
            ),
          ),
          const ListTile(
            tileColor: Color(0xffF8F8FA),
            leading: Icon(
              FontAwesomeIcons.ccMastercard,
              color: Color(0xffF3D179),
              size: 20,
            ),
            title: Text(
              '****1234',
              style: TextStyle(
                  color: Color(0xff474A56),
                  fontSize: 15,
                  fontFamily: 'MazzardH-Regular'),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const ListTile(
            tileColor: Color(0xffF8F8FA),
            leading: Icon(
              FontAwesomeIcons.ccVisa,
              color: Color(0xff334D8F),
              size: 20,
            ),
            title: Text(
              '****4887',
              style: TextStyle(
                  color: Color(0xff474A56),
                  fontSize: 15,
                  fontFamily: 'MazzardH-Regular'),
            ),
          ),
          const SizedBox(height: 20),
          Center(
              child: InkWell(
            onTap: () {
              Navigator.pop(context);
              showModalBottomSheet(
                  context: context, builder: ((context) => const AddNewCard()));
            },
            child: Container(
              height: 50,
              width: 336,
              decoration: BoxDecoration(
                border: Border.all(width: 1.5, color: const Color(0xff334D8F)),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Continue without template',
                      style: TextStyle(
                          color: Color(0xff334D8F),
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          fontFamily: 'MazzardH-Regular'),
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.add,
                          color: Color(0xff334D8F),
                        )),
                  ],
                ),
              ),
            ),
          )),
          const SizedBox(height: 20),
          RisedButton(
            onPress: () {
              // showModalBottomSheet(
              //     context: context,
              //     builder: ((context) => const PaymentChosen()));
            },
            color: const Color(0xff334D8F),
            title: 'Pay from balance',
          )
        ],
      ),
    );
  }
}
