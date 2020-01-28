

import 'package:flutter/material.dart';
import 'package:jogo1/ui/start_page.dart';

class HomePage extends StatefulWidget{
  @override 
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>{
  String _texto = "texto";
  int _valor=0;
   @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Jogo Desafio"),
        backgroundColor: Colors.red,
        centerTitle: true,
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
          padding: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
          child: Center(
            child: Column(
              crossAxisAlignment:  CrossAxisAlignment.stretch,
              children: <Widget>[
                RaisedButton(
                  onPressed: _chamarTela,
                  child: Text("texto button"),
                  color: Colors.green,
                ),
                RaisedButton(
                  onPressed: (){
                      
                      _chamarTela2();
                  },
                  child: Text("texto button2"),
                  color: Colors.green,
                ),
                Text(
                  _texto,
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          )
      ),
    );
  }

  void _chamarTela() async{
     _valor+=await Navigator.push(context,
                      MaterialPageRoute(builder: (context)=> StartPage()));
      _texto = "teste $_valor";                
  }
    void _chamarTela2() {
     
                      Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context)=> StartPage()));
                     
                  
  }

}
