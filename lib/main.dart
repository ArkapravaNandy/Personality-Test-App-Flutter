//everything in flutter is just a bunch of widgets
//execution of code starts here
import 'package:flutter/material.dart'; //flutter has several drt files under the flutter package, which has several built-in projects
//void main(){
//  runApp(MyApp()); //this method tries to take our created widget tree and tries to draw something on the screen
//}
import './question.dart';
import './Button.dart';
import 'Score.dart';
void main() => runApp(MyApp()); 
//one line expression in case there is only one line in the method
//to create a widget, we need to create a class. As
//every widget is just a object of some class.
class MyApp extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

//extends-->inheritance
//stateless-widget helps in making our class a widget to be used by flutter
//variables inside classes --->properties
//functions inside classes --->methods
class MyAppState extends State<MyApp>//State--->generic class
{
  var ansScoreSet={1:[5,10], 2:[10,5],3:[15,20],4:[20,15]};
  var ansIndex=0;
  var _questionIndex=0;
  var _ans1=['   Red   ', '   Dog   '];
  var _ans2=['  Green  ', '   Cat   '];
  var _ans3=['  Blue  ', '  Bird  '];
  var _ans4=['  Black  ', 'Elephant'];

  int netScore=0;

  void resetQuiz(){
    setState(() {
    ansIndex=0;
    netScore=0;
    _questionIndex=0;
    
    });
    }
  
  void _answerQuestion(int index){
    setState(() {
      _questionIndex=(_questionIndex+1);//now the ques. index is being set dynamically
      netScore=netScore+ansScoreSet[index][ansIndex];
      ansIndex=(ansIndex+1)%2;
      
      print(netScore);

    });
    
  }
  
  @override 
  Widget build(BuildContext context) //context is just a special type of method that will be called automatically
  {
    var questions=['What\'s is your favourite colour ?', 
    'What\'s your favourite animal ?',]; //list of ques. we will use in our app
    return MaterialApp(home: Scaffold(
      appBar: AppBar(title: Text('My First App'),
      ) ,
      body: 
      (_questionIndex<questions.length)? 
      Column(
          
         
          children : [
             question(questions[_questionIndex]),
            
          RaisedButton(
            
          onPressed: () => _answerQuestion(1),
          textColor: Colors.white,
          padding: const EdgeInsets.all(0.0),
          
          child: Container(
            margin:EdgeInsets.all(10),
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: <Color>[
                  Color(0xFF0D47A1),
                  Color(0xFF1976D2),
                  Color(0xFF42A5F5),
                ],
              ),
            ),
            padding: const EdgeInsets.all(10.0),
            child: Text(
              _ans1[_questionIndex],
              style: TextStyle(fontSize: 20)
            ),
          ),),
          
          RaisedButton(
            
          onPressed: () => _answerQuestion(2),
          textColor: Colors.white,
          padding: const EdgeInsets.all(0.0),
          child: Container(
            margin:EdgeInsets.all(10),
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: <Color>[
                  Color(0xFF0D47A1),
                  Color(0xFF1976D2),
                  Color(0xFF42A5F5),
                ],
              ),
            ),
            padding: const EdgeInsets.all(10.0),
            child: Text(
              _ans2[_questionIndex],
              style: TextStyle(fontSize: 20)
            ),
          ),),
          RaisedButton(
            
          onPressed: () => _answerQuestion(3),
          textColor: Colors.white,
          padding: const EdgeInsets.all(0.0),
          child: Container(
            margin:EdgeInsets.all(10),
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: <Color>[
                  Color(0xFF0D47A1),
                  Color(0xFF1976D2),
                  Color(0xFF42A5F5),
                ],
              ),
            ),
            padding: const EdgeInsets.all(10.0),
            child: Text(
              _ans3[_questionIndex],
              style: TextStyle(fontSize: 20)
            ),
          ),),
          RaisedButton(
            
          onPressed: () => _answerQuestion(4),
          textColor: Colors.white,
          padding: const EdgeInsets.all(0.0),
          child: Container(
            margin:EdgeInsets.all(10),
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: <Color>[
                  Color(0xFF0D47A1),
                  Color(0xFF1976D2),
                  Color(0xFF42A5F5),
                ],
              ),
            ),
            padding: const EdgeInsets.all(10.0),
            child: Text(
              _ans4[_questionIndex],
              style: TextStyle(fontSize: 20)
            ),
          ),),
        ],
          
        
        
        ):Score(netScore,resetQuiz),
        
    ),
    ); 
    //MaterialApp(it's actually a class) is the returned widget here ; it turns our combination of widgets into a proper app
  }
//Scaffold() has the job to create the base page design
//the 'title:' takes a widget, preferably a text widget
}//if we want to add elements one next to other, we can use row() instead of column
//@required in method ensure that you don't forget to pass the arguments while method call 