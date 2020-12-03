import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import './startscreen/mainscreen.dart';

void main()=> runApp(Matapp());

class Matapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Getstarted(),
    );
  }
}


