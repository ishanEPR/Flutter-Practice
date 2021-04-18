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
        title: TextField(
          keyboardType: TextInputType.text,
          controller: title,
          decoration: InputDecoration(
            prefixIcon: Icon(
              Icons.search,
              color: Colors.white,
            ),
            suffixIcon: IconButton(
              icon: Icon(
                Icons.close,
                color: Colors.white,

              ),
              onPressed: (){
                title.text='';
              },

            ),
            border: InputBorder.none,
            filled: true,
            hintText: 'Search',
            hintStyle: TextStyle(color: Colors.white70),

          ),


        ),
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
