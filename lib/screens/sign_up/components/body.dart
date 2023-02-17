import 'package:ecommerceui/components/custom_svg_icon.dart';
import 'package:ecommerceui/components/default_button.dart';
import 'package:ecommerceui/components/form_error.dart';
import 'package:ecommerceui/screens/sign_up/components/sign_up.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_svg/svg.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: 
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
              children: [
                Text(
                  "Complete Profile",
                  style: TextStyle(fontSize: 28, color: Colors.black),
                ),
                Text(
                  "Complete your details and continue \nwith social media",
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 30,
                ),
                SignUpForm(),
                SizedBox(
                  height: 30,
                ),
                SizedBox(height: 30,),
                Text(
                  "By continuing your confirm that you agree \nwith our term and condition",
                  textAlign: TextAlign.center,
                ),
                
              ],
            ),
        ),
        
      ),
      
    );
  }
}




