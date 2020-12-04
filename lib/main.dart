import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import "./setup/country.dart";
import './startscreen/mainscreen.dart';

void main()=> runApp(Matapp());

class Matapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "SFProText-Bold.ttf",
      ),
      home: Getstarted() //Country(),
    );
  }
}


