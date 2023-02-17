import 'package:ecommerceui/components/default_button.dart';
import 'package:ecommerceui/constants.dart';
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
              SizedBox(height: 70,),
              Text("OTP Verification"),
              Text("We Sent your code to +95 9252799***"),
              
              buildTimer(),
              SizedBox(height: 70,),
              OtpForm(),
              SizedBox(height: 70,),
              GestureDetector(child: Text("resent OTP code",style: TextStyle(decoration: TextDecoration.underline),)),
            ],
          ),
        ),
      ),
    );
  }

  Row buildTimer() {
    return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("This code will expired in "),
            TweenAnimationBuilder(
                tween: Tween(begin: 30.0, end: 0),
                duration: Duration(seconds: 30),
                builder: (context, value, child) => Text("00:${value.toInt()}",style: TextStyle(color: kPrimaryColor),)
                )
          ],
        );
  }
}

class OtpForm extends StatefulWidget {
  const OtpForm({super.key});

  @override
  State<OtpForm> createState() => _OtpFormState();
}

class _OtpFormState extends State<OtpForm> {
  FocusNode? pin2FocusNode;
  FocusNode? pin3FocusNode;
  FocusNode? pin4FocusNode;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    pin2FocusNode = FocusNode();
    pin3FocusNode = FocusNode();
    pin4FocusNode = FocusNode();
  }

  @override
  void dispose() {
    pin2FocusNode!.dispose();
    pin3FocusNode!.dispose();
    pin4FocusNode!.dispose();
    super.dispose();
  }

  void nextField({String? value,FocusNode? focusNode}){
    if(value!.length == 1){
      focusNode!.requestFocus();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      child: 
      Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 60,
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  obscureText: true,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 24),
                  decoration: otpInputDecoration,
                  onChanged: (value) {
                    nextField(value: value,focusNode: pin2FocusNode);
                  } ,
                ),
              ),
              SizedBox(
                width: 60,
                child: TextFormField(
                  focusNode: pin2FocusNode,
                  keyboardType: TextInputType.number,
                  obscureText: true,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 24),
                  decoration: otpInputDecoration,
                  onChanged: (value) {
                    nextField(value: value,focusNode: pin3FocusNode);
                  } ,
                ),
              ),
              SizedBox(
                width: 60,
                child: TextFormField(
                  focusNode: pin3FocusNode,
                  keyboardType: TextInputType.number,
                  obscureText: true,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 24),
                  decoration: otpInputDecoration,
                  onChanged: (value) {
                    nextField(value: value,focusNode: pin4FocusNode);
                  } ,
                ),
              ),
              SizedBox(
                width: 60,
                child: TextFormField(
                  focusNode: pin4FocusNode,
                  keyboardType: TextInputType.number,
                  obscureText: true,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 24),
                  decoration: otpInputDecoration,
                  onChanged: (value) {
                    pin4FocusNode!.unfocus();
                  } ,
                ),
              ),
            ],
          ),
          SizedBox(height: 70,),
          DefaultButton(text: "Continue", press: (){
            Navigator.pushNamed(context, HomeScreen.Routename);
          })
        ],
      ),
    );
  }
}
