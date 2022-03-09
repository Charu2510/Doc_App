import 'package:flutter/material.dart';
import 'package:hu_app/screen21.dart';
import 'package:hu_app/screen22.dart';
import 'package:hu_app/screen23.dart';
import 'package:hu_app/screen24.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      theme: ThemeData(scaffoldBackgroundColor: const Color.fromARGB(43, 236, 196, 83)),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 132, 220, 231),
          title: const Text("Your HEALTH is our Priority", textAlign: TextAlign.center, style: TextStyle(color: Colors.deepPurple,fontSize: 30),), 
        ),
        body: ListView(
          children: [
            Container(
              decoration: const BoxDecoration(
                shape: BoxShape.rectangle,
                image: DecorationImage(
                  image: AssetImage('bground.jpeg'),
                  fit: BoxFit.cover,
                ), 
              ),
              margin: const EdgeInsets.all(25),
              padding: const EdgeInsets.all(20),
              height: 150,
              width: 450,
            ),
            Container(
              child: const Text("Tap On Your Issue",textAlign: TextAlign.center, style: TextStyle(color: Color.fromARGB(255, 119, 59, 3),fontSize: 25),),

              decoration: const BoxDecoration(
                shape: BoxShape.rectangle, color: Color.fromARGB(4, 250, 124, 86), 
              ),
              
              margin: const EdgeInsets.all(0),
              padding: const EdgeInsets.all(10),
              height: 100,
              width: 450,
            ),

            const MyStatelessWidget(),

          ],
        ), 
      ),
    );
  }
}

class MyStatelessWidget extends StatelessWidget {
  const MyStatelessWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Padding(padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20)),
        const SizedBox(width: 140,),
        Card(
          color: Color.fromARGB(30, 17, 238, 65),
          child:
           InkWell(
            splashColor: Colors.blue.withAlpha(30),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (_) => const Doc_screen() , settings: const RouteSettings( arguments: "This is from main screen."),),);
            },
            
            child: const SizedBox(
              width: 170,
              height: 170,
              child: Text('\n \nDiabetes',textAlign: TextAlign.center,style: TextStyle(color: Color.fromARGB(255, 9, 153, 52),fontSize: 25),),      
            
            ),
          ),
          
        ),
        const SizedBox(width: 60),
        Card(
          color: Color.fromARGB(30, 65, 17, 238),
          child: InkWell(
            splashColor: Colors.blue.withAlpha(30),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (_) => const Doc_screens() , settings: const RouteSettings( arguments: "This is from main screen."),),);
            },
            
            child: const SizedBox(
              width: 170,
              height: 170,
              child: Text('\n \nKidney\nProblems', textAlign: TextAlign.center,style: TextStyle(color: Color.fromARGB(255, 126, 7, 116),fontSize: 25),),      
            
            ),
          ),
        ),
        const SizedBox(width: 60),
        Card(
          color: Color.fromARGB(30, 248, 8, 168),
          child: InkWell(
            splashColor: Colors.blue.withAlpha(30),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (_) => const Doc_screenss() , settings: const RouteSettings( arguments: "This is from main screen."),),);
            },
            
            child: const SizedBox(
              width: 170,
              height: 170,
              child: Text('\n \nMigraine',textAlign: TextAlign.center,style: TextStyle(color: Color.fromARGB(255, 223, 19, 206),fontSize: 25),),      
            
            ),
          ),
        ),
        const SizedBox(width: 60),
        Card(
          color: Color.fromARGB(30, 236, 6, 6),
          child: InkWell(
            splashColor: Colors.blue.withAlpha(30),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (_) => const Doc_screensss() , settings: const RouteSettings( arguments: "This is from main screen."),),);
            },
            
            child: const SizedBox(
              width: 170,
              height: 170,
              child: Text('\n \nHeart\nIssues',textAlign: TextAlign.center,style: TextStyle(color: Color.fromARGB(255, 158, 43, 8),fontSize: 25),),      
            
            ),
          ),
        ),

      ],
    );
  }
}


  
  