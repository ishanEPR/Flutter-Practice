import 'package:flutter/material.dart';
import 'package:flutter_app/screens/home_page.dart';
class Second_page extends StatelessWidget {
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
        child: Text('Second Page'),
      ),
    );
  }
}
