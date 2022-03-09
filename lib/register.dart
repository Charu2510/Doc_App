import 'package:flutter/material.dart';
import 'package:hu_app/last_screen.dart';  
  
void main() => runApp(Register());  
  
class Register extends StatelessWidget {  
  @override  
  Widget build(BuildContext context) {  
    final appTitle = 'Add your Personal Information here :';  
    return MaterialApp(  
      title: appTitle, 
      theme: ThemeData(scaffoldBackgroundColor: const Color.fromARGB(43, 236, 196, 83)), 
      home: Scaffold(  
        appBar: AppBar(  
          title: Text(appTitle),  
        ),  
        body: MyCustomForm(),  
      ),  
    );  
  }  
}  
// Create a Form widget.  
class MyCustomForm extends StatefulWidget {  
  @override  
  MyCustomFormState createState() {  
    return MyCustomFormState();  
  }  
}  
// Create a corresponding State class. This class holds data related to the form.  
class MyCustomFormState extends State<MyCustomForm> {  
  // Create a global key that uniquely identifies the Form widget  
  // and allows validation of the form.  
  final _formKey = GlobalKey<FormState>();  
  
  @override  
  Widget build(BuildContext context) {  
    // Build a Form widget using the _formKey created above.  
    return Form(  
      key: _formKey,  
      child: Column(  
        crossAxisAlignment: CrossAxisAlignment.start,  
        children: <Widget>[  
          const Padding(padding: EdgeInsets.symmetric(vertical: 20)),
          SizedBox(width: 10,height: 10,),
          TextFormField(  
            decoration: const InputDecoration(  
              icon: const Icon(Icons.person),  
              hintText: 'Enter your name',  
              labelText: 'Name',  
            ),  
          ),  
          const Padding(padding: EdgeInsets.symmetric(vertical: 10)),
          TextFormField(  
            decoration: const InputDecoration(  
              icon: const Icon(Icons.phone),  
              hintText: 'Enter a phone number',  
              labelText: 'Phone',  
            ),  
          ),  
          const Padding(padding: EdgeInsets.symmetric(vertical: 10)),
          TextFormField(  
            decoration: const InputDecoration(  
            icon: const Icon(Icons.calendar_today),  
            hintText: 'Enter your date of birth',  
            labelText: 'D.O.B',  
            ),  
           ),  
           const Padding(padding: EdgeInsets.symmetric(vertical: 10)),
          TextFormField(  
            decoration: const InputDecoration(  
            icon: const Icon(Icons.add_location),  
            hintText: 'Enter your location',  
            labelText: 'Location',  
            ),  
           ),  
          new Container(  
              padding: const EdgeInsets.only(left: 600.0, top: 40.0),  
              child: new RaisedButton(  
                child: const Text('Submit'),  
                color: Colors.blue, 
                splashColor: Color.fromARGB(255, 192, 219, 71),
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (_) => last_screen() , settings: const RouteSettings( arguments: "This is third screen."),),);
                    
                  },  
              )),  
        ],  
      ),  
    );  
  }  
}