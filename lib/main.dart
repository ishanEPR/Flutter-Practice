import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Welcome to new web site"),
          centerTitle: true,
          shadowColor:Colors.black,
          backgroundColor: Colors.black12,
        ),
        body: Center(
          child: Text("Hello world",style:TextStyle(fontSize: 20.0,),),
        ),
      ),
    );

  }

}