import 'package:ecommerceui/screens/login_success/components/body.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class LoginSuccess extends StatelessWidget {
  const LoginSuccess({super.key});
  static String RouteName = "/login_success";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Success"),
      ),
      body: Body(),
    );
  }
}