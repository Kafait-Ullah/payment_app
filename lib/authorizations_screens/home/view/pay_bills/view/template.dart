import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:payment_app/Component/raised_button.dart';
import 'package:payment_app/authorizations_screens/home/view/pay_bills/view/pay_category.dart';

class Template extends StatefulWidget {
  const Template({
    Key? key,
  }) : super(key: key);

  @override
  State<Template> createState() => _PayBillsState();
}

class _PayBillsState extends State<Template> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
      height: 500,
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.arrow_back_ios)),
              const Padding(
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
                  fontWeight: FontWeight.bold,
                  fontFamily: 'MazzardH-Regular'),
            ),
            subtitle: Text(
              'Mastercard **** 3241',
              style: TextStyle(
                  color: Color(0xff8A8A8A),
                  fontSize: 15,
                  fontFamily: 'MazzardH-Regular'),
            ),
            trailing: Text(
              '\$108.00',
              style: TextStyle(
                  color: Color(0xff474A56),
                  fontWeight: FontWeight.bold,
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
              FontAwesomeIcons.bolt,
              color: Color(0xffF3D179),
              size: 20,
            ),
            title: Text(
              'Light',
              style: TextStyle(
                  color: Color(0xff474A56),
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'MazzardH-Regular'),
            ),
            subtitle: Text(
              'Mastercard **** 3241',
              style: TextStyle(
                  color: Color(0xff8A8A8A),
                  fontSize: 15,
                  fontFamily: 'MazzardH-Regular'),
            ),
            trailing: Text(
              '\$108.00',
              style: TextStyle(
                  color: Color(0xff474A56),
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                  fontFamily: 'MazzardH-Regular'),
            ),
          ),
          const SizedBox(height: 60),
          RisedButton(
            onPress: (() {
              Navigator.pop(context);

              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: ((context) => const PayCategory())));
            }),
            title: 'Continue',
            color: const Color(0xff334D8F),
          )
        ],
      ),
    );
  }
}
