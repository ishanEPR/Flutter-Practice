// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';
// import 'package:device_preview/device_preview.dart';
//
// void main(){
//   runApp(
//     DevicePreview(
//       enabled: !kReleaseMode,
//       builder: (context) => MyApp(), // Wrap your app
//     ),
//   );
// }
// class MyApp extends StatelessWidget{
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       locale: DevicePreview.locale(context), // Add the locale here
//       builder: DevicePreview.appBuilder, // Add the builder here
//
//       title:'Hello ishan',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: HomePage(),
//     );
//
//   }
//
// }
// class HomePage extends  StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Flutter'),
//         leading: IconButton(
//           icon: Icon(Icons.menu),
//           onPressed: (){},
//         ),
//         actions: [
//           IconButton(icon: Icon(Icons.search), onPressed:(){}),
//           IconButton(icon: Icon(Icons.more_vert), onPressed:(){}),
//
//         ],
//         flexibleSpace:Image.asset("assests/ishan.png",fit: BoxFit.cover,),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());

}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }

}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Flutter'),
          leading: IconButton(
            icon: Icon(Icons.menu),
            onPressed: (){},
          ),
          actions: [
            IconButton(icon: Icon(Icons.search), onPressed:(){}),
            IconButton(icon: Icon(Icons.more_vert), onPressed:(){}),
          ],
          //flexibleSpace: Image.asset("assests/ishan.png",fit: BoxFit.cover,),
          bottom:TabBar(
            tabs: [
              Tab(icon: Icon(Icons.directions_car),text: "Car",),
              Tab(icon: Icon(Icons.directions_train),),
              Tab(icon: Icon(Icons.directions_bike),),
            ],
          ),
          elevation: 22.0,
          backgroundColor: Colors.blue,
        ),
        body: TabBarView(
          children: [
           tab1(),
            Icon(Icons.directions_train),
            Icon(Icons.directions_bike),
          ],
        ),

      ),
    );
  }
}
Widget tab1(){
  return Container(
    child: Center(
      child: Text('Ishan Reshmika'),
    ),
  );

}

















