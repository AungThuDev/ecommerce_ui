import 'package:ecommerceui/constants.dart';
import 'package:ecommerceui/screens/sign_in_screen/sign_in.dart';
import 'package:flutter/material.dart';

import '../../components/default_button.dart';
import 'splash_content.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int currentPage = 0;
  List<Map<String,dynamic>> SplashData = [
      {
        "text" : "Welcome TOKOTO Let's shop",
        "image" : "assets/images/img1.jpg",
      },
      {
        "text" : "Welcome TOKOTO Let's shop",
        "image" : "assets/images/img2.jpg",
      },
      {
        "text" : "Welcome TOKOTO Let's shop",
        "image" : "assets/images/img3.jpg",
      },
    ];
  @override
  Widget build(BuildContext context) {
    
    
    return 
    SafeArea(
      child: 
      SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: PageView.builder(
                onPageChanged: (value) {
                  setState(() {
                    currentPage = value;
                  });
                },
                itemCount: SplashData.length,
                itemBuilder: (context,index){
                  return SplashContent(
                    text: SplashData[index]["text"],
                    image: SplashData[index]['image']);
                }),),
              
            Expanded(
              flex: 2,
              child: 
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(SplashData.length, (index) => buildDot(index: index)),
                    ),
                    Spacer(flex: 3,),
                    DefaultButton(
                      text: "Continue",
                      press: () => Navigator.pushNamed(context, SignInScreen.RouteName),
                    ),
                    Spacer(),
                  ],),
              ))
          ],
        ),
      ),
    );
  }

  AnimatedContainer buildDot({required int index}) {
    return AnimatedContainer(
                  duration: kAnimationDuration,
                  margin: EdgeInsets.only(right: 5),
                  width: currentPage == index ? 20 : 6,
                  height: 6,
                  decoration: BoxDecoration(
                    color: currentPage == index? kPrimaryColor : Color(0xFFD8D8D8),
                    borderRadius: BorderRadius.circular(3)
                  ),
                  
                );
  }
}


