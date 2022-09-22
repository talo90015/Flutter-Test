
import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Text("Page 1", style: TextStyle(fontSize: 45.0, color: Colors.green),
      ),
    );
  }

}