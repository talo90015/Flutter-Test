

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class SecondScreen extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Text("Page 2", style: TextStyle(fontSize: 45.0, color: Colors.blue),
      ),
    );
  }
}