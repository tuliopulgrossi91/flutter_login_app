import 'dart:async';

import 'package:flutter/material.dart';

import 'main.dart';

void main() => runApp(
      MaterialApp(
        home: SplashScene(),
      ),
    );

class SplashScene extends StatefulWidget {
  @override
  MySplash createState() => MySplash();
}

class MySplash extends State<SplashScene> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      Duration(seconds: 5),
      () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Main(),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
            gradient: LinearGradient(
          colors: [Colors.cyan, Colors.indigo],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        )),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image(
              image: AssetImage('images/logo.png'),
              height: 128,
              width: 128,
              alignment: Alignment.center,
            ),
            Text('Login Flutter App',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white)),
          ],
        ),
      ),
    );
  }
}
