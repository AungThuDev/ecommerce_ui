import 'package:ecommerceui/route.dart';
import 'package:ecommerceui/screens/home/home_screen.dart';
import 'package:ecommerceui/screens/splash/splash_screen.dart';
import 'package:ecommerceui/screens/theme.dart';
import 'package:flutter/material.dart';
import 'constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: theme(),
      //home: const SplashScreen(),
      initialRoute: SplashScreen.RouteName,
      routes : routes,
    );
  }
}

