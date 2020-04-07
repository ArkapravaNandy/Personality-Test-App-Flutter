import 'package:flutter/material.dart';
class Button extends StatelessWidget {
  final String textDisplay;
  Button(this.textDisplay);
  
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(7.5),
      child:
      GestureDetector(
      onTap: (){
          
          print(textDisplay);
      },
      
      child: Container(
        height: 36.0,
        padding: const EdgeInsets.all(8.0),
        margin: const EdgeInsets.symmetric(horizontal: 8.0),
        decoration: BoxDecoration(
          
          borderRadius: BorderRadius.circular(5.0),
          color: Colors.amber,
        ),
        child: Center(
          child: Text(textDisplay),
        ),
      ),
    ),
    );
  }
}