import 'package:flutter/material.dart';


class Formdata extends StatelessWidget {
  String data;
  Formdata(String data){
    this.data=data;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Form data $data'),
      ),
      body: Center(


        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextField(
                maxLength: 8,
                keyboardType: TextInputType.number,
                style: TextStyle(
                  fontSize: 22.0,
                ),
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  hintText: "Enter your name"
                ),
                obscureText: true,
                cursorColor: Colors.black,

              ),
            ),
            Padding(padding: const EdgeInsets.all(20.0),
            child: TextField(
              maxLength: 12,
              keyboardType: TextInputType.datetime,
              style: TextStyle(
                fontSize: 20.0,
              ),
              //enabled: false,

            ),

            ),
          ],
        ),


      ),
    );
  }
}
