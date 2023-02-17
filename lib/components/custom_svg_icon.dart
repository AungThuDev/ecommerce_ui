import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomSurfixIcon extends StatelessWidget {
  const CustomSurfixIcon({
    required this.svgIcon,
    super.key,
  });
  final String svgIcon;
  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.fromLTRB(0, 20, 20, 20),
      child: SvgPicture.asset(svgIcon,height: 16,),
    );
  }
}
