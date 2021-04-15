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

// import 'package:flutter/material.dart';
//
// void main(){
//   runApp(MyApp());
//
// }
//
// class MyApp extends StatelessWidget{
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: HomePage(),
//     );
//   }
//
// }
//
// class HomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return DefaultTabController(
//       length: 3,
//       child: Scaffold(
//         appBar: AppBar(
//           title: Text('Flutter'),
//           leading: IconButton(
//             icon: Icon(Icons.menu),
//             onPressed: (){},
//           ),
//           actions: [
//             IconButton(icon: Icon(Icons.search), onPressed:(){}),
//             IconButton(icon: Icon(Icons.more_vert), onPressed:(){}),
//           ],
//           //flexibleSpace: Image.asset("assests/ishan.png",fit: BoxFit.cover,),
//           bottom:TabBar(
//             tabs: [
//               Tab(icon: Icon(Icons.directions_car),text: "Car",),
//               Tab(icon: Icon(Icons.directions_train),),
//               Tab(icon: Icon(Icons.directions_bike),),
//             ],
//           ),
//           elevation: 22.0,
//           backgroundColor: Colors.blue,
//         ),
//         body: TabBarView(
//           children: [
//            tab1(),
//             Icon(Icons.directions_train),
//             Icon(Icons.directions_bike),
//           ],
//         ),
//
//       ),
//     );
//   }
// }
// Widget tab1(){
//   return Container(
//     child: Center(
//       child: Text('Ishan Reshmika'),
//     ),
//   );
//
// }

// import 'package:flutter/material.dart';
//
// void main(){
//   runApp(MyApp());
// }
//  class MyApp extends StatelessWidget{
//   @override
//   Widget build(BuildContext context) {
//    return MaterialApp(
//      debugShowCheckedModeBanner: false,
//      theme: ThemeData(
//        brightness: Brightness.light,
//        primarySwatch: Colors.orange,
//
//
//      ),
//      home: MyHomePage(),
//    );
//   }
//
//  }
//
//  class MyHomePage extends StatelessWidget {
//    @override
//    Widget build(BuildContext context) {
//      return Scaffold(
//        appBar: AppBar(
//          title:Text("Hello Ishan"),
//        ),
//        body: Container(
//         // height: 300.0,
//          margin: EdgeInsets.only(top: 10.0,left: 20.0,right: 20.0,bottom: 10.0),
//        //  padding: EdgeInsets.all(20.0),
//          padding: EdgeInsets.symmetric(vertical: 20.0,horizontal: 40.0),
//          transform: Matrix4.rotationZ(0.1),
//          alignment: Alignment.bottomLeft,
//          width: double.infinity,
//          color: Colors.pinkAccent,
//          child: Text("Hello Ishan",style: TextStyle(fontSize: 40.0),),
//        ),
//
//      );
//    }
//  }


// import 'package:flutter/material.dart';
//
// void main(){
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget{
//   @override
//   Widget build(BuildContext context) {
//   return MaterialApp(
//     debugShowCheckedModeBanner: false,
//     home: MyHomePage(),
//   );
//   }
//
// }
// class MyHomePage extends StatelessWidget{
//   @override
//   Widget build(BuildContext context) {
//   return DefaultTabController(
//     length: 4,
//     child: Scaffold(
//
//       appBar: AppBar(
//
//         title: Text('Welcome to Ishan'),
//         leading:IconButton(
//           icon: Icon(Icons.menu),
//           onPressed: (){},
//         ),
//         actions: [
//           IconButton(icon: Icon(Icons.search), onPressed:(){}),
//           IconButton(icon: Icon(Icons.more_vert), onPressed: (){})
//         ],
//         bottom: TabBar(
//           tabs: [
//             Tab(icon: Icon(Icons.directions_car),),
//             Tab(icon: Icon(Icons.directions_train),),
//             Tab(icon: Icon(Icons.directions_bike),),
//             Tab(icon: Icon(Icons.photo),),
//           ],
//         ),
//
//       ),
//       body: TabBarView(
//         children: [
//           tab1(),
//           tab2(),
//           tab3(),
//           Icon(Icons.photo),
//
//         ],
//
//       ),
//     ),
//   );
//   }
//
// }
//
// Widget tab1(){
//
//   return Container(
//
//        // child:  Text('Ishan',style: TextStyle(fontSize: 20.0,),),
//
//         child: Column(
//
//           mainAxisAlignment:MainAxisAlignment.start,
//           crossAxisAlignment: CrossAxisAlignment.end,
//
//           children: [
//             Text('Ishan'),
//             Text('Ishan'),
//             Text('Ishan'),
//             Text('Ishan'),
//             Text('Ishan'),
//
//
//           ],
//
//         ),
//
//
//
//   );
// }
// Widget tab2(){
//   return Container(
//
//
//     child: Row(
//       mainAxisAlignment: MainAxisAlignment.center ,
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Text('Ishan'),
//         Text('Ishan'),
//         Text('Ishan'),
//       ],
//     ),
//   );
// }
// Widget tab3(){
//   return Container(
//     child: Row(
//       mainAxisAlignment: MainAxisAlignment.start,
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Text('Ishan'),
//         Text('Ishan'),
//         Text('Ishan'),
//         Column(
//           mainAxisAlignment: MainAxisAlignment.start,
//           children: [
//             Text('Ishan'),
//             Text('Ishan'),
//             Text('Ishan'),
//           ],
//         ),
//
//       ],
//
//     ),
//   );
// }

import 'package:flutter/material.dart';

void main(){
  runApp(App());
}
class App extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
     title: "Flutter tutorial",
     home: HomePage(),
   );
  }

}
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int count=0;
  void increment(){
    setState(() {
      count=count+1;
      print(count);
    });

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Welcome to search",style: TextStyle(fontSize: 20.0),),
      ),
      body:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("you have pushed button times",style: TextStyle(fontSize: 25.0),),
            Text("$count",style: Theme.of(context).textTheme.display1,),
          ],
        ),
      ),
      floatingActionButton:FloatingActionButton(
        child: Icon(Icons.add),
        onPressed:increment,

      ) ,
    );
  }
}




































