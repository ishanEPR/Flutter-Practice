import 'package:flutter/material.dart';
class Async_page extends StatefulWidget {
  @override
  _Async_pageState createState() => _Async_pageState();
}

class _Async_pageState extends State<Async_page> {
  void getData() async {
   String email=await Future.delayed(Duration(seconds: 3),(){
      //print('ishan@gmail.com');
     return "ishan@gmail.com";
    });
  //  print("Hello Ishan");
   String name=await Future.delayed(Duration(seconds: 2),(){
     // print('name:Ishan,age:23');
     return "name:Ishan,age:23";
    });
   print(email+" "+name);
  }

  @override
  void initState() {

    super.initState();
    getData();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Asyncronus Programming"),
      ),


    );
  }
}
