import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';

void main(){
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => MyApp(), // Wrap your app
    ),
  );
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: DevicePreview.locale(context), // Add the locale here
      builder: DevicePreview.appBuilder, // Add the builder here
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