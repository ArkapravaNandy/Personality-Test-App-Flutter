import 'package:flutter/material.dart';

import './Button.dart';
class Score extends StatelessWidget {
  
  final int sCore;
  final Function resetHandler;
  Score(this.sCore, this.resetHandler);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin:EdgeInsets.all(20),
      child: Column( 
        children : [
          Container(
            child:Text(
        'Your Personality is  '+calculate(sCore),
        
        textAlign: TextAlign.center,
      style:
      TextStyle(fontSize: 40, 
      color: Colors.white),
      ),
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
          color: Colors.lightBlueAccent,
      ),
      ),
        FlatButton(onPressed: resetHandler, 
        child: Text(
          'Restart Quiz', 
          textAlign: TextAlign.center,
          ),
          textColor: Colors.white,
          color: Colors.amber,
        ),
        ],
        
        
    ),
    
    );
  }
  String calculate(int score){
    String operative;
    if(score<=10)
      operative="Helpful & Caring";
    else if(score>10 && score<=20)
      operative="Daring";
    else if(score>20 && score<=30)
      operative="Selfless";
    else operative="Ambitious";
    return operative;
  }
   
}