import 'dart:html';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:hu_app/register.dart';

class Doc_screenss extends StatelessWidget{
  const Doc_screenss({Key? key}) :super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Here is the list of Solutions & Docs near you. "),
      ),
      body: ListView(
        children : [
            Container(
              child: const Text("Choose Natural first -",textAlign: TextAlign.center, style: TextStyle(color: Color.fromARGB(255, 241, 243, 241),fontSize: 25),),
              decoration: const BoxDecoration(shape: BoxShape.rectangle, color: Color.fromARGB(255, 49, 204, 95)),
              margin: const EdgeInsets.all(25),
              padding: const EdgeInsets.all(40),
            ),
            Row(
              children: [
                const SizedBox(width: 190),
                Image.asset("yoga.webp",height: 100,width: 100, ),
                const SizedBox(width: 20),
                const Text("YOGA \n>Hastapadasana, Setu bandhasana, Shishuasana", style: TextStyle(color: Colors.purple, fontSize: 20)),
              ],
            ),
            Row(
              children: [
                const SizedBox(width: 190),
                Image.asset("leaf.png",height: 89,width: 100, ),
                const SizedBox(width: 20),
                const Text("DIET \n>Include cauliflower, sea bass, egg whites, garlic in your diet", style: TextStyle(color: Colors.purple, fontSize: 20)),
              ],
            ),
            const SizedBox(height: 30,),
            Container(
              child: const Text("Doctors Online For You -",textAlign: TextAlign.center, style: TextStyle(color: Color.fromARGB(255, 239, 243, 240),fontSize: 25),),
              decoration: const BoxDecoration(shape: BoxShape.rectangle, color: Color.fromARGB(255, 221, 45, 45)),
              margin: const EdgeInsets.all(25),
              padding: const EdgeInsets.all(40),
            ),
            const SizedBox(height: 10,),
            Row(
              children: [
                const SizedBox(width: 190),
                Image.asset("plus.jpg",height: 89,width: 100, ),
                const SizedBox(width: 20),
                const Text("> Dr.Manju ,MD AIIMES, Mumbai\n -- 747474747\n\n >Dr.Sameeksha ,MD Medanta\n -- 66464646", style: TextStyle(color: Colors.purple, fontSize: 20)),
              ],
            ), 
            const SizedBox(height: 100),
            SizedBox(
              width: 70,
              height: 70,
              child: ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (_) =>  Register() , settings: const RouteSettings( arguments: "This is third screen."),),);
            }, child: const Text("Click to Register", style: TextStyle(fontSize: 30),),
            style: ElevatedButton.styleFrom( primary: Colors.teal,elevation: 10,
            shape: const BeveledRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(5))),
            ),
            ) ,), 
        ],
      ),
    );
  }


}