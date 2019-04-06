import 'package:flutter/material.dart';
void background(){
  runApp(Background());
}
class Background extends StatelessWidget {
  Color gradientStart = Colors.black87;
  Color gradientEnd = Colors.grey[900];
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('Esteem'),
          backgroundColor: Colors.black87,
        ),
        body: new Container(
          decoration: new BoxDecoration(
            gradient: new LinearGradient(colors: [gradientStart,gradientEnd],
                begin: const FractionalOffset(0.5, 0.0),
                end: const FractionalOffset(0.0, 0.5),
                stops: [0.0,1.0],
                tileMode: TileMode.clamp
            ),
          ),
        ),
      ),
    );
  }
}