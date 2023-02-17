import 'package:ecommerceui/components/default_button.dart';
import 'package:ecommerceui/screens/home/home_screen.dart';
import 'package:flutter/material.dart';
class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset("assets/icons/login.jpeg",
        height: 400,),
        SizedBox(height: 20,),
        Text("Login Success",style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,fontSize: 24),),
          Spacer(),
        SizedBox(
          width: MediaQuery.of(context).size.width*0.4,
          child: DefaultButton(
            text: "Back To Home",
            press: (){
              Navigator.pushNamed(context, HomeScreen.Routename);
            }),
        ),
        Spacer(),
      ],
    );
  }
}