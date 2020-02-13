import 'package:flutter/material.dart';
import 'package:jogo1/ui/drag_page.dart';
import 'package:flutter/services.dart';

class HomePage extends StatefulWidget{
  @override 
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>{
  TextEditingController nomeEdit = TextEditingController();
   @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]
    );
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Stack(
        children: <Widget>[
          Container(
          decoration:  BoxDecoration(
            image:  DecorationImage(
              image: new AssetImage("images/bg.png"), 
              fit: BoxFit.fill)
              ),
          ),
          SingleChildScrollView(
          padding: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
          child: Center(
            child: Column(
              children: <Widget>[
                Padding(
                   padding: EdgeInsets.fromLTRB(10.0, 80.0, 10.0, 10.0),
                ),
               Container(
                  width: 180.0,
                  height: 130.0,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("images/logo1.png"),
                   
                  ),
                ),
               ),
              Padding(
                   padding: EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 0.0),
                ),
              Text(
                  "Qual o seu nome?",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.white),
                ),
               Padding(
                  padding: EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 0.0),
                ),
                TextField(
                    style: TextStyle(fontSize: 22.0),
                    controller: nomeEdit,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      contentPadding:
                          const EdgeInsets.only(left: 14.0, bottom: 8.0, top: 8.0),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(25.7),
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(25.7),
                      ),
                    ),
                ),
              
                SizedBox(
                  width: 200,
                  child: RaisedButton(
                          onPressed: (){
                            _chamarTela();
                          },
                          color: Colors.orange,
                          shape: RoundedRectangleBorder(
                                  borderRadius: new BorderRadius.circular(18.0),
                                  side: BorderSide(color: Colors.red)
                          ),
                          child: Text("Avançar",
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.black),),
              
                        ),
                  ),
               
              ],
            ),
          )
      ),
        ],
      )
    );
  }

  void _chamarTela() {
      Navigator.push(context,
                      MaterialPageRoute(builder: (context)=> DragPage(nomeJogador: nomeEdit.text)));
                      
  }
   

}
