import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:payment_app/Component/raised_button.dart';

class PaymentMethods extends StatefulWidget {
  const PaymentMethods({super.key});

  @override
  State<PaymentMethods> createState() => _PaymentMethodsState();
}

class _PaymentMethodsState extends State<PaymentMethods> {
  bool isVisible = false;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                  top: size.height * 0.06,
                  left: size.width * 0.03,
                  right: size.width * 0.03),
              child: Row(
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(
                        Icons.arrow_back_ios_new_outlined,
                        color: Color(0xff474A56),
                      )),
                  SizedBox(width: size.width * 0.02),
                  Text(
                    'Payment methods',
                    style: TextStyle(
                        color: const Color(0xff474A56),
                        fontFamily: 'MazzardH-Regular',
                        fontSize: size.height * 0.03,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: size.width * 0.10,
                  ),
                  IconButton(
                      onPressed: () {
                        setState(() {
                          isVisible = !isVisible;
                        });
                      },
                      icon: const Icon(Icons.edit))
                ],
              ),
            ),
            SizedBox(
              height: size.height * 0.04,
            ),
            Row(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                const Expanded(
                  child: ListTile(
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
                ),
                Visibility(
                    visible: isVisible,
                    child: IconButton(
                        onPressed: () {}, icon: const Icon(Icons.delete)))
              ],
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
            Row(
              children: [
                const Expanded(
                  child: ListTile(
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
                ),
                Visibility(
                    visible: isVisible,
                    child: IconButton(
                        onPressed: () {}, icon: const Icon(Icons.delete)))
              ],
            ),
            const SizedBox(height: 20),
            Center(
                child: InkWell(
              onTap: () {},
              child: Container(
                height: 50,
                width: 336,
                decoration: BoxDecoration(
                  border:
                      Border.all(width: 1.5, color: const Color(0xff334D8F)),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Add new payment method',
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
            SizedBox(height: size.height * 0.50),
            RisedButton(
              color: const Color(0xff334D8F),
              title: 'Apply',
            )
          ],
        ),
      ),
    );
  }
}
