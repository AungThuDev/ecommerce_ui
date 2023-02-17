import 'package:ecommerceui/screens/components/body.dart';
import 'package:ecommerceui/size_config.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});
  static String RouteName = "/splash";
  @override
  Widget build(BuildContext context) {
    //SizeConfig().init(context);
    return Scaffold(
      body: Body(),
    );
  }
}