import 'package:flutter/material.dart';
import 'package:flutter_app/screens/home_page.dart';
// class Second_page extends StatelessWidget {
//   String text;
//   Second_page(String text){
//     this.text=text;
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Second Navigation'),
//         leading: IconButton(
//           icon: Icon(Icons.home),
//           onPressed: (){
//             Navigator.pop(context,HomePage());
//           },
//         ),
//       ),
//       body: Center(
//         child: Text(text),
//       ),
//     );
//   }
// }


class Second_page extends StatelessWidget {
  String text;
  Second_page(String text){
    this.text=text;
  }
  @override
  Widget build(BuildContext context) {
    var items=List<String>.generate(100, (index) => 'item: $index');
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView Tutorial'),
      ),
      body: Container(
     //   height: 150.0,
        child: ListView.builder(
          itemCount:items.length ,
          itemBuilder: (context,index){
            return  ListTile(
              title: Text(items[index]),
            );
          },

        ),
          //scrollDirection: Axis.horizontal,///horizontal vidihata listview create kirima

        ),

    );
  }
}

