import 'package:flutter/material.dart';
import 'package:flutter_app/screens/home_page.dart';
class Second_page extends StatelessWidget {
  String text;
  Second_page(String text){
    this.text=text;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Navigation'),
        leading: IconButton(
          icon: Icon(Icons.home),
          onPressed: (){
            Navigator.pop(context,HomePage());
          },
        ),
      ),
      body: Center(
        child: Text(text),
      ),
    );
  }
}
