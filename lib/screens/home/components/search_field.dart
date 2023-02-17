import 'package:flutter/material.dart';

import '../../../constants.dart';

class SearchField extends StatelessWidget {
  const SearchField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
    decoration: BoxDecoration(
      color: kSecondaryColor.withOpacity(0.1),
      borderRadius: BorderRadius.circular(15),
    ),
    height: 50,
    width: MediaQuery.of(context).size.width*0.6,
    child: TextField(
      onChanged: (value) {},
      decoration: InputDecoration(
        enabledBorder: InputBorder.none,
        focusedBorder: InputBorder.none,
        prefixIcon: Icon(Icons.search),
        contentPadding: EdgeInsets.symmetric(horizontal: 20,vertical: 12),
        hintText: "Search Product"
      ),
    )
              );
  }
}


