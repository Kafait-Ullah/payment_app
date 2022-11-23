import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:payment_app/authorizations_screens/home/view/pay_bills/view/template.dart';

class Pay extends StatefulWidget {
  const Pay({
    Key? key,
  }) : super(key: key);

  @override
  State<Pay> createState() => _PayBillsState();
}

class _PayBillsState extends State<Pay> {
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
                  'Choose communal type',
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
          const ListTile(
            tileColor: Color(0xffF8F8FA),
            leading: Icon(
              FontAwesomeIcons.bolt,
              color: Color(0xffF3D179),
              size: 20,
            ),
            title: Text(
              'Light',
              style: TextStyle(
                  color: Color(0xff474A56),
                  fontSize: 15,
                  fontFamily: 'MazzardH-Regular'),
            ),
            trailing: Icon(
              Icons.arrow_forward_ios_outlined,
              size: 20,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const ListTile(
            tileColor: Color(0xffF8F8FA),
            leading: Icon(
              FontAwesomeIcons.fire,
              color: Color(0xffFEB377),
              size: 20,
            ),
            title: Text(
              'Gas',
              style: TextStyle(
                  color: Color(0xff474A56),
                  fontSize: 15,
                  fontFamily: 'MazzardH-Regular'),
            ),
            trailing: Icon(
              Icons.arrow_forward_ios_outlined,
              size: 20,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const ListTile(
            tileColor: Color(0xffF8F8FA),
            leading: Icon(
              FontAwesomeIcons.droplet,
              color: Color(0xffA7C5EB),
              size: 20,
            ),
            title: Text(
              'Water',
              style: TextStyle(
                  color: Color(0xff474A56),
                  fontSize: 15,
                  fontFamily: 'MazzardH-Regular'),
            ),
            trailing: Icon(
              Icons.arrow_forward_ios_outlined,
              size: 20,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Padding(
            padding: EdgeInsets.only(top: 20, left: 10, right: 300, bottom: 10),
            child: Text(
              'OTHER',
              style: TextStyle(
                  color: Color(0xff8A8A8A),
                  fontSize: 16,
                  fontFamily: 'MazzardH-Regular'),
            ),
          ),
          ListTile(
            tileColor: const Color(0xffF8F8FA),
            leading: const Icon(
              FontAwesomeIcons.solidCreditCard,
              color: Color(0xff474A56),
              size: 20,
            ),
            title: const Text(
              'Increase balance',
              style: TextStyle(
                  color: Color(0xff474A56),
                  fontSize: 15,
                  fontFamily: 'MazzardH-Regular'),
            ),
            trailing: IconButton(
              onPressed: () {
                Navigator.pop(context);
                showModalBottomSheet(
                    context: context,
                    builder: (BuildContext context) {
                      return const Template();
                    });
              },
              icon: const Icon(
                Icons.arrow_forward_ios_outlined,
                size: 20,
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          )
        ],
      ),
    );
  }
}
