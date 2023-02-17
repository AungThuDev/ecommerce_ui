import 'package:flutter/material.dart';

import '../../constants.dart';

class SplashContent extends StatelessWidget {
  const SplashContent({
    required this.text,
    required this.image,
    super.key,
  });
  final String text,image;
  

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Spacer(flex: 2,),
        Text("TOKOTO",style: TextStyle(fontSize: MediaQuery.of(context).size.width * 0.1,
        color: kPrimaryColor,
        fontWeight: FontWeight.bold
        ),),
        Text(text,textAlign: TextAlign.center,),
        Spacer(flex: 2,),
        Image.asset(image,
        height: MediaQuery.of(context).size.height*0.5,
        width: MediaQuery.of(context).size.width*0.7,
        ),
      ],
    );
  }
}