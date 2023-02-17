import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SocialCard extends StatelessWidget {
  const SocialCard({
    required this.icon,
    required this.press,
    super.key,
  });
  final String icon;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return 
    GestureDetector(
      
      onTap: press,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 10),
        width: 40,
        height: 40,
        decoration: BoxDecoration(
          color: Color(0xFFF5F6F9),
          shape: BoxShape.circle,
        ),
        child: 
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: SvgPicture.asset(icon,height: 5,),
        ),
      ),
    );
  }
}
