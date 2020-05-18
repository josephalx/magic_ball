import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.amber[300],
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Header(),
              Body(),
            ],
          ),
        ),
      ),
    ),
  );
}

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Text(
          'Magic Decission App',
          style: TextStyle(
            fontSize: 50.0,
            color: Colors.cyan[400],
            fontFamily: 'appfont',
            fontWeight: FontWeight.w300,
            shadows: <Shadow>[
              Shadow(
                offset: Offset(2.0, 2.0),
                blurRadius: 3.0,
                color: Colors.white,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int dec = 1;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.all(20.0),
        child: FlatButton(
          onPressed: (){
            setState(() {
              dec=Random().nextInt(4)+1;
            });
          },
            child: Image.asset('images/ball$dec.png'),
        ),
      ),
    );
  }
}
