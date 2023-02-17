import 'package:flutter/material.dart';
import 'package:ecommerceui/constants.dart';

ThemeData theme() {
  return ThemeData(
      appBarTheme: 
      appBarTheme(),
      inputDecorationTheme: inputDecorationTheme(),
      fontFamily: "Roboto",
      scaffoldBackgroundColor: Colors.white,
      textTheme: TextTheme(
        bodyText1: TextStyle(color: kTextColor),
        bodyText2: TextStyle(color: kTextColor),
      ),
      visualDensity: VisualDensity.adaptivePlatformDensity);
}

AppBarTheme appBarTheme() {
  return AppBarTheme(
    centerTitle: true,
      color: Colors.white,
      elevation: 0,
      brightness: Brightness.light,
      iconTheme: IconThemeData(color: Colors.black),
      titleTextStyle: TextStyle(color: Colors.black, fontSize: 18),
    );
}

InputDecorationTheme inputDecorationTheme() {
  OutlineInputBorder outlineInputBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(28),
      borderSide: BorderSide(color: kTextColor),
      gapPadding: 10);
  return InputDecorationTheme(
    contentPadding: EdgeInsets.symmetric(horizontal: 42, vertical: 20),
    enabledBorder: outlineInputBorder,
    focusedBorder: outlineInputBorder,
    border: outlineInputBorder,
  );
}
