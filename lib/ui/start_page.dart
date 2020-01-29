import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class StartPage extends StatefulWidget{
  final String nomeJogador;
  StartPage({this.nomeJogador});

  @override 
  _StartPageState createState() => _StartPageState();

 
}

class _StartPageState extends State<StartPage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.nomeJogador),
        centerTitle: true,
      ),
      body: Stack(
        children: <Widget>[
          Container(
          decoration:  BoxDecoration(
            image:  DecorationImage(
              image: new AssetImage("images/bg1.png"), 
              fit: BoxFit.fill)
              ),
          ), 
      SingleChildScrollView(
        padding: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
        child: Center(
            child: Column(
              children: <Widget>[
                Text("adasd")
              ]
            ),
        ),
      ),
        ]
      ),
    );
  }
}