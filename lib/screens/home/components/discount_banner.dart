import 'package:flutter/material.dart';

class DiscountBanner extends StatelessWidget {
  const DiscountBanner({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      padding: EdgeInsets.symmetric(horizontal: 20,vertical: 15),
      width: double.infinity,
      
      decoration: BoxDecoration(
        color: Color(0xFF4A3298),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text.rich(
        TextSpan(text: "A Summer Susprise\n",
        style: TextStyle(color: Colors.white),
        children: [TextSpan(text: "20% Cash Back",
        style: TextStyle(fontSize: 24,
        fontWeight: FontWeight.bold))]))
    );
  }
}

