import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'dart:math' as math;

class StartPage extends StatelessWidget{
  final String nomeJogador;
  StartPage({this.nomeJogador});
@override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text(this.nomeJogador)),
        body: 
        Stack(
          children: <Widget>[
          Container(
          decoration:  BoxDecoration(
            image:  DecorationImage(
              image: new AssetImage("images/bg1.png"), 
              fit: BoxFit.fill)
              ),
          ),
           Padding(
            padding: EdgeInsets.fromLTRB(20.0, 25.0, 20.0, 0.0),
            child: CollapsingList(),
           ),
          
         ]
        )
          
      ),
    );
  }
}
class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  _SliverAppBarDelegate({
    @required this.minHeight,
    @required this.maxHeight,
    @required this.child,
  });
  final double minHeight;
  final double maxHeight;
  final Widget child;
  @override
  double get minExtent => minHeight;
  @override
  double get maxExtent => math.max(maxHeight, minHeight);
  @override
  Widget build(
      BuildContext context, 
      double shrinkOffset, 
      bool overlapsContent) 
  {
    return new SizedBox.expand(child: child);
  }
  @override
  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
    return maxHeight != oldDelegate.maxHeight ||
        minHeight != oldDelegate.minHeight ||
        child != oldDelegate.child;
  }
}
class CollapsingList extends StatelessWidget {

  SliverPersistentHeader makeHeader(String headerText) {
    return SliverPersistentHeader(
      pinned: true,
      delegate: _SliverAppBarDelegate(
        minHeight: 60.0,
        maxHeight: 200.0,
        child: Container(
            color: Colors.lightBlue, child: Center(child:
                Text(headerText))),
      ),
    );
  }

  SliverPersistentHeader makeImagem(String caminhoImagem) {
    return SliverPersistentHeader(
      pinned: true,
      delegate: _SliverAppBarDelegate(
        minHeight: 60.0,
        maxHeight: 200.0,
        child: Container(
          width: 180.0,
          height: 130.0,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(caminhoImagem),
            ),
          )
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        SliverList(
          delegate: SliverChildListDelegate(
            [
              Text(
                  "Continuando...",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22, color: Colors.black),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0.0, 15.0, 0.0, 0.0),
                ),
                Text(
                  "Parece que hoje está um bom dia para brincar na praia",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.normal, fontSize: 15, color: Colors.black),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0.0, 15.0, 0.0, 0.0),
                ),
                Text(
                  "Click na imagem que representa como está o tempo hoje conforme a imagem",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.black),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0.0, 15.0, 0.0, 0.0),
                ),
            ],
          ),
        ),
        SliverGrid.count(
          crossAxisCount: 2,
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
              child: RaisedButton(
                onPressed: (){},
                child: Image( image: AssetImage("images/dia.png")),
                color: Colors.white
              ),
            ),
             Padding(
              padding: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
              child: RaisedButton(
                onPressed: (){},
                child: Image( image: AssetImage("images/noite.png")),
                color: Colors.white
              ),
            ),
          ],
        ),
        makeImagem("images/praia.png")
       
      ],
    );
  }
}