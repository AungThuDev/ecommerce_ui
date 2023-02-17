import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';
class IconBtnWithCounter extends StatelessWidget {
  const IconBtnWithCounter({
    super.key,
    required this.svgSrc,
    this.numOfItem = 0,
    required this.press
  });
  final String svgSrc;
  final int numOfItem;
  final GestureTapCallback press;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
        padding: EdgeInsets.all(10),
        height: 46,
        width: 46,
        decoration: BoxDecoration(
          color: kSecondaryColor.withOpacity(0.1),
          shape: BoxShape.circle
        ),
        child: SvgPicture.asset(svgSrc),
      ),
      if(numOfItem != 0)
      Positioned(
        top: -3,
        right: 0,
        child: Container(
          height: 16,
          width: 16,
          decoration: BoxDecoration(
            color: Colors.red,
            shape: BoxShape.circle,
            border: Border.all(width: 1.5,color: Colors.white)
          ),
          child: 
          Center(
            child: Text("$numOfItem",
            style: TextStyle(
            height: 1,
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 8,
            ),),
          ),
        ))
        ],
      ),
    );
  }
}