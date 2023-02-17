
import 'package:ecommerceui/screens/forget_password/forgot_password_screen.dart';
import 'package:ecommerceui/screens/login_success/login_success.dart';
import 'package:flutter/material.dart';

import '../../../components/custom_svg_icon.dart';
import '../../../components/default_button.dart';
import '../../../components/form_error.dart';
import '../../../constants.dart';

class SignInForm extends StatefulWidget {
  const SignInForm({super.key});
  @override
  State<SignInForm> createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm> {
  final _formKey = GlobalKey<FormState>();
  final List<String> errors = [];
  bool remember = false;
  @override
  Widget build(BuildContext context) {
    return 
    Form(
      key: _formKey,
      child: Column(
        children: [
          buildEmailForm(),
            SizedBox(height: 30,),
            buildPasswordForm(),
            SizedBox(height: 30,),
            formError(errors: errors),
            SizedBox(height: 30,),

            Row(
              children: [
              
              Checkbox(
                activeColor: kPrimaryColor,
                value: remember, onChanged: (value){
                setState(() {
                  remember = value!;
                });
              }),
              Text("Remember me"),
              Spacer(),
              GestureDetector(
                onTap: ()=>Navigator.popAndPushNamed(context, ForgotPasswordScreen.RouteName),
                child: Text("Forgot Password",style: TextStyle(decoration: TextDecoration.underline),))
            ],),
              SizedBox(height: 30,),
              DefaultButton(
                text: "Continue",
                press: () {
                  if(_formKey.currentState!.validate()){
                    _formKey.currentState!.save();
                    Navigator.pushNamed(context, LoginSuccess.RouteName);
                  }
                },
              ),

          
        ],
      ),
    );
  }

  TextFormField buildPasswordForm() {
    return TextFormField(
          obscureText: true,
          validator: (value) {
            if(value!.isEmpty){
              setState(() {
                errors.add("Please Enter your password");
              });
            }
          },
          decoration: InputDecoration(
            hintText: "Enter your password",
            labelText: "Password",
            floatingLabelBehavior: FloatingLabelBehavior.always,
            suffixIcon: CustomSurfixIcon(svgIcon: "assets/icons/lock.svg",)
            ),
            
          );
  }

  TextFormField buildEmailForm() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
        // onChanged: (value) {
        //   if(value.isEmpty && errors.contains(kEmailNullError)){
        //       setState(() {
        //         errors.remove(kEmailNullError);
        //       });
        //     }else if(emailValidatorRegExp.hasMatch(value) && errors.contains(kInvalidEmailError)){
        //       setState(() {
        //         errors.remove(kInvalidEmailError);
        //       });
        //     }
        //     return null;
        // },
          validator: (value) {
            if(value!.isEmpty){
              setState(() {
                errors.add("please enter your email");
              });
              return "";
            }
            return null;
          },
          decoration: InputDecoration(
            hintText: "Enter your email",
            labelText: "Email",
            floatingLabelBehavior: FloatingLabelBehavior.always,
            suffixIcon: CustomSurfixIcon(svgIcon: "assets/icons/mail.svg",)
            ),
            
          );
  }
}

