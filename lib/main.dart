import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: MyHomePage(),
    );
  }
}
Color color = Colors.blueAccent;
String disp = '';
 class MyHomePage extends StatefulWidget {
   const MyHomePage({super.key});
 
   @override
   State<MyHomePage> createState() => _MyHomePageState();
 }
 
 class _MyHomePageState extends State<MyHomePage> {
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       backgroundColor: color,
       bottomNavigationBar: CurvedNavigationBar(
         height: 70,
         //animationDuration: Duration (milliseconds: 400),
         backgroundColor: color,
         items: [
           Icon(Icons.add),
           Icon(Icons.home),
           Icon(Icons.search),
         ],
         onTap: (index){
           setState(() {
             if (index == 0){
                disp = 'add';
                color = Colors.orange;
             }else if (index == 1){
               disp = 'home';
               color = Colors.pinkAccent;
             }else {
               disp = 'search';
               color = Colors.deepPurple;
             }
           });
         },
       ),
       body: Center(
         child: Container(
           child: Text(
             disp,
             style: TextStyle(
               fontSize: 50,
               color: Colors.white,
             ),
           ),
         ),
       ),
     );
   }
 }
 