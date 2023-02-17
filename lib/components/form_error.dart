import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class formError extends StatelessWidget {
  const formError({
    super.key,
    required this.errors,
  });

  final List<String> errors;

  @override
  Widget build(BuildContext context) {
    return
    Column(
      children: List.generate(errors.length, (index) => formErrorText(error: errors[index]))
    );
  }

  Row formErrorText({required String error}) {
    return Row(
          children: [
            SvgPicture.asset("assets/icons/error.svg",height: 14.0,width: 14,),
            SizedBox(width: 10,),
            Text(error),
          ],
        );
  }
}

