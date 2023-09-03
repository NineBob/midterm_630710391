import 'package:flutter/material.dart';

class CategoryButton extends StatelessWidget {
  final String text;
  final String text1;
  final String text2;
  final String text3;
  final String text4;
  final String text5;
  //final IconData icon;
  const CategoryButton({
    super.key,
    required this.text ,
    required this.text1 ,
    required this.text2 ,
    required this.text3 ,
    required this.text4 ,
    required this.text5 ,
    //required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(text,style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.bold)),

          Text(text1,style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.bold)),
          Text(text2,style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.bold)),
          Text(text3,style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.bold)),
          Text(text4,style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.bold)),
          Text(text5,style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.bold)),
        ],
      ),
      height:300.0 ,

      decoration: BoxDecoration(color: Colors.white,border: Border.all(color: Colors.black,style: BorderStyle.solid),borderRadius: BorderRadius.circular(10.0)),

    );
  }
}