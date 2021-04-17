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
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView Tutorial'),
      ),
      body: Container(
     //   height: 150.0,
        child: ListView(
          //scrollDirection: Axis.horizontal,///horizontal vidihata listview create kirima
          children: [
            ListTile(
              leading: Icon(Icons.brightness_auto),
              title: Text('Brightness Auto'),
              subtitle: Text('Change the brightness'),
              trailing: Icon(Icons.menu),
              onTap: (){},
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.photo),
              title: Text('Brightness Auto'),
              subtitle: Text('Change the brightness'),
              trailing: Icon(Icons.menu),
              onTap: (){},
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.keyboard),
              title: Text('Brightness Auto'),
              subtitle: Text('Change the brightness'),
              trailing: Icon(Icons.menu),
              onTap: (){},
            ),
            Divider(),

            ListTile(
              leading: Icon(Icons.ring_volume),
              title: Text('Ringing'),
              subtitle: Text('Hello Ishan'),
              trailing: Icon(Icons.menu),
              onTap: (){},
            ),
            Divider(),

            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              subtitle: Text('change settings'),
              trailing: Icon(Icons.menu),
              onTap: (){},
            ),
            Divider(),

            ListTile(
              leading: Icon(Icons.home),
              title: Text('Near'),
            ),





            ListTile(
              leading: Icon(Icons.backup),
              title: Text('Brightness Auto'),

              onTap: (){},
            ),

          ],
        ),
      ),
    );
  }
}

