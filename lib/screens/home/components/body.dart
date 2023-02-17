import 'package:ecommerceui/constants.dart';
import 'package:ecommerceui/screens/home/components/discount_banner.dart';
import 'package:ecommerceui/screens/home/components/header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SizedBox(
      child: Column(
          children: [
            SizedBox(height: 15,),
            HomeHeader(),
            SizedBox(height: 30,),
            DiscountBanner(),
            SizedBox(height: 30,),
            Categories(),
            SizedBox(height: 30,),
            Row(
              
              children: [
                SizedBox(width: 20,),
                Text("Special for you"),
                SizedBox(width: 200,),
                Text("See more.."),
              ],
            ),
            SizedBox(height: 30,),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                
                children: [
                
                
              SizedBox(
                width: 242,
                height: 150,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                child: Image.asset("assets/images/image_banner.jpeg",fit: BoxFit.cover,),  
                ),
                
              ),

              SizedBox(width: 30,),
              SizedBox(
                width: 242,
                height: 150,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                child: Image.asset("assets/images/image_banner3.jpeg",fit: BoxFit.cover,),  
                ),
                
              ),
              SizedBox(width: 30,),
              SizedBox(
                width: 242,
                height: 150,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                child: Image.asset("assets/images/image_banner2.jpeg",fit: BoxFit.cover,),  
                ),
                
              ),
              SizedBox(width: 30,),
              ],),
            )
          ],)
    ));
  }
}

class Categories extends StatelessWidget {
  const Categories({super.key});

  @override
  Widget build(BuildContext context) {
    // List<Map<String,dynamic>> categories = [
    //   {"icon":"assets/icons/flash.svg","text":"Flash Deal"},
    //   {"icon":"assets/icons/bill.svg","text":"Bill"},
    //   {"icon":"assets/icons/game.svg","text":"Game"},
    //   {"icon":"assets/icons/gift.svg","text":"Dail Gift"},
    //   {"icon":"assets/icons/vinyl.svg","text":"More"},
    // ];
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,
      children:
      [
        SizedBox(
      width: 55,
      child: 
      GestureDetector(
        onTap: (){},
        child: Column(
          children: [
            AspectRatio(
              aspectRatio: 1,
              child: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Color(0xFFFFECDF),
                  borderRadius: BorderRadius.circular(10)
                ),
                child: SvgPicture.asset("assets/icons/flash.svg",color: Colors.orange,),
              ),),
              SizedBox(height: 10,),
              Text("Flash Deal",textAlign: TextAlign.center,)
          ],
        ),
      ),
    ),
    SizedBox(
      width: 55,
      child: 
      GestureDetector(
        onTap: (){},
        child: Column(
          children: [
            AspectRatio(
              aspectRatio: 1,
              child: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Color(0xFFFFECDF),
                  borderRadius: BorderRadius.circular(10)
                ),
                child: SvgPicture.asset("assets/icons/game.svg",color: Colors.orange,),
              ),),
              SizedBox(height: 10,),
              Text("Game",textAlign: TextAlign.center,)
          ],
        ),
      ),
    ),
    SizedBox(
      width: 55,
      child: 
      GestureDetector(
        onTap: (){},
        child: Column(
          children: [
            AspectRatio(
              aspectRatio: 1,
              child: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Color(0xFFFFECDF),
                  borderRadius: BorderRadius.circular(10)
                ),
                child: SvgPicture.asset("assets/icons/game.svg",color: Colors.orange,),
              ),),
              SizedBox(height: 10,),
              Text("Flash Deal",textAlign: TextAlign.center,)
          ],
        ),
      ),
    ),
    SizedBox(
      width: 55,
      child: 
      GestureDetector(
        onTap: (){},
        child: Column(
          children: [
            AspectRatio(
              aspectRatio: 1,
              child: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Color(0xFFFFECDF),
                  borderRadius: BorderRadius.circular(10)
                ),
                child: SvgPicture.asset("assets/icons/gift.svg",color: Colors.orange,),
              ),),
              SizedBox(height: 10,),
              Text("Gift",textAlign: TextAlign.center,)
          ],
        ),
      ),
    ),
    SizedBox(
      width: 55,
      child: 
      GestureDetector(
        onTap: (){},
        child: Column(
          children: [
            AspectRatio(
              aspectRatio: 1,
              child: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Color(0xFFFFECDF),
                  borderRadius: BorderRadius.circular(10)
                ),
                child: SvgPicture.asset("assets/icons/flash.svg",color: Colors.orange,),
              ),),
              SizedBox(height: 10,),
              Text("Flash Deal",textAlign: TextAlign.center,)
          ],
        ),
      ),
    )
      ],      
    );
  }
}

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    super.key,
    required this.icon, required this.text, required this.press,
  });
  final String icon;
  final String text;
  final GestureTapCallback press;
  

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 55,
      child: 
      GestureDetector(
        onTap: press,
        child: Column(
          children: [
            AspectRatio(
              aspectRatio: 1,
              child: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Color(0xFFFFECDF),
                  borderRadius: BorderRadius.circular(10)
                ),
                child: SvgPicture.asset(icon,color: Colors.green,),
              ),),
              SizedBox(height: 10,),
              Text(text,textAlign: TextAlign.center,)
          ],
        ),
      ),
    );
  }
}