import 'dart:html';
import 'dart:ui';

import 'package:flutter/material.dart';
class last_screen extends StatelessWidget{
  const last_screen({Key? key}) :super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("VOILA !!!!!"),
      ),
      body: ListView(children: [
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
              child: const Text("CONGRATULATIONS !!!!\n \nYou have successfully registered with us.",textAlign: TextAlign.center, style: TextStyle(color: Color.fromARGB(255, 119, 59, 3),fontSize: 45),),

              decoration: const BoxDecoration(
                shape: BoxShape.rectangle, color: Color.fromARGB(4, 250, 124, 86), 
              ),
              
              margin: const EdgeInsets.all(0),
              padding: const EdgeInsets.all(10),
              height: 400,
              width: 450,
            ),
        
      ]),
    );  
  }    
}      