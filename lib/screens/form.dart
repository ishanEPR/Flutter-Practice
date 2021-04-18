import 'package:flutter/material.dart';


class Formdata extends StatelessWidget {
  String data;
  Formdata(String data){
    this.data=data;
  }
  TextEditingController title=TextEditingController();


  @override
  Widget build(BuildContext context) {
   // title.text='ishan';
    String data1=title.text;

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

                //onchange method - get the input data
                // onChanged:(text){
                //   print(text);
                // } ,

                //onsubmitted
                // onSubmitted: (text){
                //   print(text);
                // },

                //controller
                controller: title,

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

              controller: title,

            ),

            ),
          ],
        ),


      ),
    );
  }
}
