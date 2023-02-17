import 'package:ecommerceui/screens/register/register_screen.dart';
import 'package:flutter/material.dart';

import '../../../components/custom_svg_icon.dart';
import '../../../components/default_button.dart';
import '../../../components/form_error.dart';
import '../../otp/otp_screen.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({super.key});

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final _formKey = GlobalKey<FormState>();
  final List<String> errors = [];
  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            TextFormField(
              keyboardType: TextInputType.name,
              validator: (value) {
                if (value!.isEmpty) {
                  setState(() {
                    errors.add("Please enter your first name");
                  });
                  return "";
                }
                return null;
              },
              decoration: InputDecoration(
                  labelText: "First Name",
                  hintText: "Enter your first name",
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  suffixIcon: CustomSurfixIcon(
                    svgIcon: "assets/icons/user.svg",
                  )),
            ),
            SizedBox(
              height: 30,
            ),
            TextFormField(
              keyboardType: TextInputType.name,
              validator: (value) {
                if (value!.isEmpty) {
                  setState(() {
                    errors.add("Please enter your last name");
                  });
                  return "";
                }
                return null;
              },
              decoration: InputDecoration(
                  labelText: "Last Name",
                  hintText: "Enter your last name",
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  suffixIcon: CustomSurfixIcon(
                    svgIcon: "assets/icons/user.svg",
                  )),
            ),
            SizedBox(
              height: 30,
            ),
            TextFormField(
              keyboardType: TextInputType.number,
              validator: (value) {
                if (value!.isEmpty) {
                  setState(() {
                    errors.add("Please enter your phone number");
                  });
                  return "";
                }
                return null;
              },
              decoration: InputDecoration(
                  labelText: "Phone Number",
                  hintText: "Enter your phone number",
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  suffixIcon: CustomSurfixIcon(
                    svgIcon: "assets/icons/phone.svg",
                  )),
            ),
            SizedBox(
              height: 30,
            ),
            TextFormField(
              keyboardType: TextInputType.streetAddress,
              validator: (value) {
                if (value!.isEmpty) {
                  setState(() {
                    errors.add("Please enter your address");
                  });
                  return "";
                }
                return null;
              },
              decoration: InputDecoration(
                  labelText: "Address",
                  hintText: "Enter your address",
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  suffixIcon:
                      CustomSurfixIcon(svgIcon: "assets/icons/address.svg")),
            ),
            SizedBox(
              height: 30,
            ),
            formError(errors: errors),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 50,
              child: DefaultButton(
                  text: "Continue",
                  press: () {
                    if (_formKey.currentState!.validate()) {
                      _formKey.currentState!.save();
                      Navigator.popAndPushNamed(context, OtpScreen.RouteName);
                    }
                  }),
            ),
          ],
        ));
  }
}
