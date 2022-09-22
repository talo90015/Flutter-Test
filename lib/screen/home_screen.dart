import 'dart:html';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: 500,
              height:300,
              color: Colors.green,
            ),
            Container(
              width: 500,
              height: 200,
              color: Colors.yellow,
            )
          ]
          ),
      ),
    );
  }
}