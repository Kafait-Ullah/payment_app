import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:payment_app/authorizations_screens/home/view/pay_bills/view/scanner.dart';

import '../../../../../Component/raised_button.dart';

class HelpCvv extends StatefulWidget {
  const HelpCvv({
    Key? key,
  }) : super(key: key);

  @override
  State<HelpCvv> createState() => _PaymentCardState();
}

class _PaymentCardState extends State<HelpCvv> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Container(
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(topLeft: Radius.circular(20))),
          height: 500,
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(Icons.arrow_back_ios)),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 10, right: 60),
                    child: Text(
                      'Enter new payment method',
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
              Row(
                children: [
                  Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(top: 30, right: 130),
                        child: Text(
                          'Expiration date',
                          style: TextStyle(
                              color: Color(0xff474A56),
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'MazzardH-Regular'),
                        ),
                      ),
                      SizedBox(
                        width: 270,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextFormField(
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter value';
                              } else if (value.length <= 3) {
                                return "ENter 4 digit";
                              }

                              {
                                return null;
                              }
                            },
                            keyboardType: TextInputType.number,
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                            style: const TextStyle(
                              color: Color(0xff474A56),
                            ),
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: const BorderSide(
                                  color: Color(0xffC8D1E1),
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: const BorderSide(
                                  color: Color(0xffC8D1E1),
                                ),
                              ),
                              hintText: "MM / YY",
                              hintStyle:
                                  const TextStyle(color: Color(0xffC8D1E1)),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 120,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 30, left: 10),
                          child: Row(
                            children: const [
                              Text(
                                'CVV / CVC',
                                style: TextStyle(
                                    color: Color(0xff474A56),
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'MazzardH-Regular'),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextFormField(
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                            style: const TextStyle(
                              color: Color(0xff474A56),
                            ),
                            decoration: InputDecoration(
                              suffixIcon: IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                      FontAwesomeIcons.circleQuestion)),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: const BorderSide(
                                  color: Color(0xffC8D1E1),
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: const BorderSide(
                                  color: Color(0xffC8D1E1),
                                ),
                              ),
                              hintText: "...",
                              hintStyle:
                                  const TextStyle(color: Color(0xffC8D1E1)),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            validator: MultiValidator(
                                [RequiredValidator(errorText: 'Required*')]),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 30),
              RisedButton(
                onPress: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Scanner(),
                    ),
                  );
                },
                color: const Color(0xff334D8F),
                title: 'Add',
              )
            ],
          ),
        ),
      ),
    );
  }
}
