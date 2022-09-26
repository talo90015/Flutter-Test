

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TodoInputScreen extends StatefulWidget{

  List<String> list = [];

  @override
  State createState(){
    return _TodoInputScreen();
  }
}

class _TodoInputScreen extends State<TodoInputScreen>{

  @override
  Widget build(BuildContext context){

    var textString = TextEditingController();

    Widget textInputField = Container(
      width: 400,
      margin: EdgeInsets.only(bottom: 50.0),
      child: TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          hintText: "Input"
        ),
        controller: textString,
        onSubmitted: (value) {
          setState(() {
            this.widget.list.add(value);
            textString.clear();
          });
        },
      ),
    );

    return Scaffold(
      body:Container(
        alignment: Alignment.center,
        child:Column(
        children: [
          textInputField,
          ...this.widget.list.map((str) => Text(str)).toList()
        ],
      ),
      ),
    );
  }
}