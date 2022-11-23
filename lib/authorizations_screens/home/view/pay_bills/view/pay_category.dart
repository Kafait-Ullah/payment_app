import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:payment_app/Component/raised_button.dart';
import 'package:payment_app/authorizations_screens/home/view/pay_bills/view/payment_method.dart';
import 'package:payment_app/authorizations_screens/home/view/pay_bills/view/success.dart';

class PayCategory extends StatelessWidget {
  const PayCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(Icons.arrow_back_ios_new_outlined)),
                const Text(
                  'Light',
                  style: TextStyle(
                      color: Color(0xff474A56),
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'MazzardH-Regular'),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30, left: 10),
              child: Row(
                children: const [
                  Text(
                    'Payment method',
                    style: TextStyle(
                        color: Color(0xff474A56),
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'MazzardH-Regular'),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                onTap: () {
                  showModalBottomSheet(
                      context: context,
                      builder: ((context) => const PaymentMethod()));
                },
                readOnly: true,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                style: const TextStyle(
                  color: Color(0xff474A56),
                ),
                decoration: InputDecoration(
                  suffixIcon: const Icon(Icons.arrow_drop_down),
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
                  hintText: "Choose or add new",
                  hintStyle: const TextStyle(color: Color(0xffC8D1E1)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                validator:
                    MultiValidator([RequiredValidator(errorText: 'Required*')]),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30, left: 10),
              child: Row(
                children: const [
                  Text(
                    'Smart card',
                    style: TextStyle(
                        color: Color(0xff474A56),
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'MazzardH-Regular'),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                autovalidateMode: AutovalidateMode.onUserInteraction,
                style: const TextStyle(
                  color: Color(0xff474A56),
                ),
                decoration: InputDecoration(
                  suffixIcon: const Icon(Icons.arrow_drop_down),
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
                  hintText: "Choose your smart card",
                  hintStyle: const TextStyle(color: Color(0xffC8D1E1)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                validator:
                    MultiValidator([RequiredValidator(errorText: 'Required*')]),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30, left: 10),
              child: Row(
                children: const [
                  Text(
                    'Amount',
                    style: TextStyle(
                        color: Color(0xff474A56),
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'MazzardH-Regular'),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                SizedBox(
                  width: 270,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      autovalidateMode: AutovalidateMode.onUserInteraction,
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
                        hintText: "Enter payment amount",
                        hintStyle: const TextStyle(color: Color(0xffC8D1E1)),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      validator: MultiValidator(
                          [RequiredValidator(errorText: 'Required*')]),
                    ),
                  ),
                ),
                SizedBox(
                  width: 120,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      style: const TextStyle(
                        color: Color(0xff474A56),
                      ),
                      decoration: InputDecoration(
                        suffixIcon: const Icon(Icons.arrow_drop_down),
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
                        hintText: "USD",
                        hintStyle: const TextStyle(color: Color(0xffC8D1E1)),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      validator: MultiValidator(
                          [RequiredValidator(errorText: 'Required*')]),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 250),
            RisedButton(
              onPress: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Success()));
              },
              color: const Color(0xff334D8F),
              title: 'Pay',
            )
          ],
        ),
      )),
    );
  }
}
