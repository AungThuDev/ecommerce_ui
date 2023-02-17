import 'package:ecommerceui/components/custom_svg_icon.dart';
import 'package:ecommerceui/components/default_button.dart';
import 'package:ecommerceui/components/form_error.dart';
import 'package:ecommerceui/components/social_card.dart';
import 'package:ecommerceui/screens/sign_up/sign_up_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return 
    SizedBox(
      width: double.infinity,
      child: 
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: 
        SingleChildScrollView(
          child: Column(
            children: [
              Text("Register Account",style: TextStyle(fontSize: 28,color: Colors.black,fontWeight: FontWeight.bold)),
              Text("Complete your details or continue \nwith social media",textAlign: TextAlign.center,),
              RegisterForm(),
              SizedBox(height: 30,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SocialCard(
                icon: "assets/icons/google.svg", press: (){}),
              SocialCard(
                icon: "assets/icons/facebook.svg", press: (){}),
              SocialCard(
                icon: "assets/icons/twitter.svg" , press: (){})
                ],
              ),
              SizedBox(height: 40,),
              Text("By continuing your confirm that you agree \nwith our term and condition",textAlign: TextAlign.center,),
              
              
            ],
          ),
        ),
      ),
    );
  }
}

class RegisterForm extends StatefulWidget {
  const RegisterForm({super.key});

  @override
  State<RegisterForm> createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  final _formKey = GlobalKey<FormState>();
  final List<String> errors = [];
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          SizedBox(height: 30,),
          TextFormField(
            keyboardType: TextInputType.emailAddress,
            validator: (value) {
              if(value!.isEmpty)
              {
                setState(() {
                  errors.add("Please enter your email");
                });
                return "";
              }
              return null;
            },
            decoration: InputDecoration(
              labelText: "Email",
              hintText: "Enter your email",
              floatingLabelBehavior: FloatingLabelBehavior.always,
              suffixIcon: CustomSurfixIcon(svgIcon: "assets/icons/mail.svg"),
            ),    
          ),
          SizedBox(height: 30,),
          TextFormField(
            obscureText: true,
            validator: (value) {
              if(value!.isEmpty)
              {
                setState(() {
                  errors.add("Please enter your password");
                });
                return "";
              }
              return null;
            },
            decoration: InputDecoration(
              labelText: "Password",
              hintText: "Enter your password",
              floatingLabelBehavior: FloatingLabelBehavior.always,
              suffixIcon: CustomSurfixIcon(svgIcon: "assets/icons/lock.svg")
            ),
          ),
          SizedBox(height: 30,),
          TextFormField(
            obscureText: true,
            validator: (value) {
              if(value!.isEmpty)
              {
                setState(() {
                  errors.add("Please re-enter your email");
                });
                return "";
              }
              return null;
            },
            decoration: InputDecoration(
              labelText: "Confirm Password",
              hintText: "Re-enter your password",
              floatingLabelBehavior: FloatingLabelBehavior.always,
              suffixIcon: CustomSurfixIcon(svgIcon: "assets/icons/lock.svg")
            ),
          ),
          SizedBox(height: 30,),
          formError(errors: errors),
          SizedBox(height: 10,),
          DefaultButton(
            text: "Continue",
            press: (){
              if(_formKey.currentState!.validate())
              {
                _formKey.currentState!.save();
                Navigator.popAndPushNamed(context, SignUpScreen.RouteName);
              }
            })
          
        ],
      ));
  }
}