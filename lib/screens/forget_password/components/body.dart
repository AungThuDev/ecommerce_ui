import 'package:ecommerceui/components/default_button.dart';
import 'package:ecommerceui/components/form_error.dart';
import 'package:ecommerceui/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../../../components/custom_svg_icon.dart';

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
      SingleChildScrollView(
        child: 
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              SizedBox(height: 40,),
              Text("Forgot Password",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 28,color: Colors.black),),
              SizedBox(height: 10,),
              Text("Please enter your email and we will send \nyour a link to return to your account",
              textAlign: TextAlign.center,),
              SizedBox(height: 40,),
              ForgotPasswordForm(),
              SizedBox(height: 40,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't have an account?"),
                  Text("Sign up",style: TextStyle(color: kPrimaryColor),),
                ],)
            ],
          ),
        ),
      ),
    );
  }
}

class ForgotPasswordForm extends StatefulWidget {
  const ForgotPasswordForm({super.key});

  @override
  State<ForgotPasswordForm> createState() => _ForgotPasswordFormState();
}

class _ForgotPasswordFormState extends State<ForgotPasswordForm> {
  final _formKey = GlobalKey<FormState>();
  final List<String> errors = [];
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: 
      Column(
        children: [
          buildForgotPasswordForm(),
          SizedBox(height: 40,),
          formError(errors: errors,),
          SizedBox(height: 40,),
          DefaultButton(
          text: "Continue",
          press: (){
            if(_formKey.currentState!.validate()){
              
            }
          })
        ],
      ));
  }

  TextFormField buildForgotPasswordForm() {
    return TextFormField(
          keyboardType: TextInputType.emailAddress,
          validator: (value) {
          if(value!.isEmpty){
            setState(() {
              errors.add("please enter your email");
            });
          }
          return null;
        },
          decoration: InputDecoration(
            labelText: "Enter your password",
            hintText: "Forgot password",
            floatingLabelBehavior: FloatingLabelBehavior.always,
            suffixIcon: CustomSurfixIcon(svgIcon: "assets/icons/mail.svg",),
          ),
        );
  }
}