
import 'dart:ui';

import 'package:demo/blog/introduction.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InputTest extends StatefulWidget{


  double a1 = 10.0;
  double a2 = 20.0;
  double result = 0.0;

  
  @override
  State createState(){
    return _InputTest();
  }
}

class _InputTest extends State<InputTest>{

  @override
  Widget build(BuildContext context){
    // 可隨時改變的狀態列
    var editText = TextEditingController();

    Widget numResult = Container(
      width: 200,
      child: TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          hintText: this.widget.result.toString()
        ),       
        controller: editText,
        onChanged:(value) {
          this.widget.result = double.parse(value);
        },
      ),
    );

    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Column(
          children: [
            numResult,
            Container(
              child: TextButton(
                child: Text("add"),
                onPressed: () {
                  setState(() {
                    this.widget.result = this.widget.a1 + this.widget.a2;
                  });
                },
              )
            ),
          ],
        )
      ),
    );
  }
}