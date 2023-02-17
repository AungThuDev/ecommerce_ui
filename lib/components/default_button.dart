import 'package:ecommerceui/screens/sign_in_screen/sign_in.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton({
    super.key, required this.text, required this.press,
  });
  final String text;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      
      width: double.infinity,
      height: 45,
      child: TextButton(
      
      style: TextButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        backgroundColor: kPrimaryColor
      ),
      onPressed: press,
      child: Text(text,style: TextStyle(
        fontSize: 15,
        color: Colors.white),)),
    );
  }
}
