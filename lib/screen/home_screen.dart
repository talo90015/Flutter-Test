import 'dart:html';
import 'package:demo/screen/first_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: TextButton(
        child: Text("Go to First Page", style: TextStyle(fontSize: 40.0, color: Colors.grey)),
        onPressed: () {
          Navigator.pushNamed(context, "/first");
        },
      )
    );
  }
}