
import 'package:ecommerceui/screens/home/components/icon_btn_couter.dart';
import 'package:ecommerceui/screens/home/components/search_field.dart';
import 'package:flutter/material.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return 
        
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SearchField(),
              IconBtnWithCounter(
                svgSrc: "assets/icons/lock.svg",
                press: () {},
              ),
              IconBtnWithCounter(
                svgSrc: "assets/icons/lock.svg",
                numOfItem: 3,
                press: () {},
              ),
            ],
          ),
        );
  }
}
