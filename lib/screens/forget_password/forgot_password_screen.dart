
import 'package:ecommerceui/screens/forget_password/components/body.dart';
import 'package:flutter/material.dart';


class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});
  static String RouteName = "/forgot_password";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //centerTitle: true,
        title: Text("Forgot Password"),
      ),
      body: Body(),
    );
  }
}