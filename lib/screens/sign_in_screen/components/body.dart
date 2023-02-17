import 'package:ecommerceui/components/default_button.dart';
import 'package:ecommerceui/constants.dart';
import 'package:ecommerceui/screens/sign_up/sign_up_screen.dart';
import 'package:ecommerceui/screens/sign_in_screen/components/sign_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../components/custom_svg_icon.dart';
import '../../../components/form_error.dart';
import '../../../components/social_card.dart';
import '../../register/register_screen.dart';
class Body extends StatelessWidget {
  const Body({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: 
          SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 20,),
                Text(
                  "Welcom Back",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 28),
                ),
                Text(
                  "sign in with your email and password \nor continue with social media",
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 30,),
                SignInForm(),
                SizedBox(height: 30,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SocialCard(
                  icon: "assets/icons/google.svg" ,
                  press: () => {},
                ),
                SocialCard(
                  icon: "assets/icons/facebook.svg" ,
                  press: () => {},
                ),
                SocialCard(
                  icon: "assets/icons/twitter.svg" ,
                  press: () => {},
                )
                  ],
                ),
                SizedBox(height: 30,),
                SignUpText()
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class SignUpText extends StatelessWidget {
  const SignUpText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
      Text("Don't have an account?",style: TextStyle(fontSize: 16),),
      GestureDetector(
        onTap: () => Navigator.popAndPushNamed(context, RegisterScreen.RouteName),
        child: Text("Sign up",style: TextStyle(color: kPrimaryColor),))
    ],);
  }
}


