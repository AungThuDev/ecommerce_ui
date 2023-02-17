import 'package:ecommerceui/screens/forget_password/forgot_password_screen.dart';
import 'package:ecommerceui/screens/home/home_screen.dart';
import 'package:ecommerceui/screens/login_success/login_success.dart';
import 'package:ecommerceui/screens/otp/otp_screen.dart';
import 'package:ecommerceui/screens/register/register_screen.dart';
import 'package:ecommerceui/screens/sign_up/sign_up_screen.dart';
import 'package:ecommerceui/screens/sign_in_screen/sign_in.dart';
import 'package:ecommerceui/screens/splash/splash_screen.dart';
import 'package:flutter/material.dart';

final Map<String,WidgetBuilder> routes = {
  SplashScreen.RouteName : (context)  => SplashScreen(),
  SignInScreen.RouteName : (context) => SignInScreen(),
  ForgotPasswordScreen.RouteName :(context) => ForgotPasswordScreen(),
  LoginSuccess.RouteName:(context) => LoginSuccess(),
  SignUpScreen.RouteName:(context) => SignUpScreen(),
  RegisterScreen.RouteName:(context) => RegisterScreen(),
  OtpScreen.RouteName:(context) => OtpScreen(),
  HomeScreen.Routename:(context) => HomeScreen(),
};