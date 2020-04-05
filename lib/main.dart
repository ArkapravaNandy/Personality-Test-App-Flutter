//everything in flutter is just a bunch of widgets
//execution of code starts here
import 'package:flutter/material.dart'; //flutter has several drt files under the flutter package, which has several built-in projects
//void main(){
//  runApp(MyApp()); //this method tries to take our created widget tree and tries to draw something on the screen
//}
void main() => runApp(MyApp()); 
//one line expression in case there is only one line in the method
//to create a widget, we need to create a class. As
//every widget is just a object of some class.
class MyApp extends StatelessWidget
//extends-->inheritance
//stateless-widget helps in making our class a widget to be used by flutter
//variables inside classes --->properties
//functions inside classes --->methods
{
  void answerQuestion(){
    print ('Answer Chosen');
  }

  @override 
  Widget build(BuildContext context) //context is just a special type of method that will be called automatically
  {
    var questions=['What\'s is your favourite colour ?', 
    'What\'s your favourite animal ?',]; //list of ques. we will use in our app
    return MaterialApp(home: Scaffold(
      appBar: AppBar(title: Text('My First App'),
      ) ,
      body:  Column(
        children : [
          Text(questions[0]),
          RaisedButton(
            child: Text('Black'), 
            onPressed :()=>print('Answer 1 chosen'),//anonymous function used here 
            ),
          RaisedButton(
            child: Text('Blue'), 
            onPressed : ()=>print('Answer 2 chosen'),
            ),
          RaisedButton(
            child: Text('Red'), 
            onPressed : ()=>print('Answer 3 chosen')
            ),
        ],
        ),
    ),
    ); 
    //MaterialApp(it's actually a class) is the returned widget here ; it turns our combination of widgets into a proper app
  }
//Scaffold() has the job to create the base page design
//the 'title:' takes a widget, preferably a text widget
}//if we want to add elements one next to other, we can use row() instead of column
//@required in method ensure that you don't forget to pass the arguments while method call 