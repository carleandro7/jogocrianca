import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class StartPage extends StatefulWidget{
  @override 
  _StartPageState createState() => _StartPageState();
}

class _StartPageState extends State<StartPage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tela2"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
        child: RaisedButton(
          onPressed: (){
              Navigator.pop(context,10);
          },
          child: Text("Volta"),
        ),
      ),
      
    );
  }
}