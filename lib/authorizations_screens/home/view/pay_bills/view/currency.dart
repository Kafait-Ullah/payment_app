import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../Component/raised_button.dart';

class Currency extends StatelessWidget {
  const Currency({
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
                  'Choose currency',
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
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              onTap: () {},
              tileColor: const Color(0xffF8F8FA),
              leading: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.currency_exchange_sharp,
                    color: Color(0xff334D8F),
                  )),
              title: const Text(
                'AZN',
                style: TextStyle(
                    color: Color(0xff474A56),
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    fontFamily: 'MazzardH-Regular'),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              onTap: () {},
              tileColor: const Color(0xffF8F8FA),
              leading: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    FontAwesomeIcons.dollarSign,
                    color: Color(0xff334D8F),
                  )),
              title: const Text(
                'USD',
                style: TextStyle(
                    color: Color(0xff474A56),
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    fontFamily: 'MazzardH-Regular'),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              onTap: () {},
              tileColor: const Color(0xffF8F8FA),
              leading: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.euro,
                    color: Color(0xff334D8F),
                  )),
              title: const Text(
                'EUR',
                style: TextStyle(
                    color: Color(0xff474A56),
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    fontFamily: 'MazzardH-Regular'),
              ),
            ),
          ),
          const SizedBox(height: 100),
          RisedButton(
            onPress: () {
              Navigator.pop(context);
              showDialog<String>(
                context: context,
                builder: (BuildContext context) => AlertDialog(
                  icon: const Icon(
                    FontAwesomeIcons.exclamation,
                    color: Colors.red,
                  ),
                  title: const Center(
                    child: Text(
                      'Warning!',
                      style: TextStyle(
                          color: Color(0xff334D8F),
                          fontWeight: FontWeight.w900,
                          fontSize: 20,
                          fontFamily: 'MazzardH-Regular'),
                    ),
                  ),
                  content: const Text(
                      textAlign: TextAlign.center,
                      'If you return,the information you entered will be deleted. Do you want to go back?'),
                  actions: <Widget>[
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 20),
                        child: Container(
                          height: 50,
                          width: 100,
                          decoration: BoxDecoration(
                              color: const Color(0xff334D8F),
                              borderRadius: BorderRadius.circular(10)),
                          child: TextButton(
                            onPressed: () => Navigator.pop(context, 'Go Back'),
                            child: const Text(
                              'Go back',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
            color: const Color(0xff334D8F),
            title: 'Continue',
          )
        ],
      ),
    );
  }
}
