import 'package:flutter/material.dart';
import 'package:flutter_app/screens/second_page.dart';

import 'Asyncronus.dart';
import 'new_form.dart';

class HomePage extends StatefulWidget {
  // HomePage(this.title, {String title});
  // final String title;



  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Navigation"),
        leading: IconButton(
          icon: Icon(Icons.next_plan),
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (_) {
              return new_form();
            }));
          },

        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('Flutter Navigation', style: TextStyle(fontSize: 25.0),),

            RaisedButton(onPressed: (){
               Text('Click Me');
              Navigator.of(context).push(MaterialPageRoute(builder: (_){
                return Async_page();
              }));
            })

          ],
        ),

      ),
      floatingActionButton: FloatingActionButton(

        child: Icon(Icons.add),
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (_) {
            return Second_page("Ishan");
          }));

          //   Navigator.of(context).pushNamed("/second");
        },
      ),

    );
  }

}



