import 'package:flutter/material.dart';
class Async_page extends StatefulWidget {
  @override
  _Async_pageState createState() => _Async_pageState();
}

class _Async_pageState extends State<Async_page> {
 Future<String>  getData() async {
   String email=await Future.delayed(Duration(seconds: 3),(){
      //print('ishan@gmail.com');
   //  return "ishan@gmail.com";
     throw Exception("Server Down");
    });

   return email;
  }

  void getNetworkRequest() async{
    print(await getData());
  }

  @override
  void initState() {

    super.initState();
    getNetworkRequest();
    print("Hello World");
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
