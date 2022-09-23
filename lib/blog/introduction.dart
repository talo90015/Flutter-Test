
import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

String str = "我是賴泰佑，畢業於國立勤益科技大學電子工程系，享受程式語言帶來的腦力激盪和邏輯碰撞!";

class Introduction extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: 200,
            height: 100,
            color: Colors.green,
            alignment: Alignment.center,
            margin: EdgeInsets.all(20.0),
            child: Text("簡介", style: TextStyle(fontSize: 40.0, color: Colors.black)),
          ),
          Container(
            width: 450,
            color: Colors.green,
            alignment: Alignment.topCenter,
            margin: EdgeInsets.all(10.0),
            child: Text(str, style: TextStyle(fontSize: 25.0, color: Colors.black)),
          ),
          Container(
            alignment: Alignment.bottomCenter,
            child: TextButton(
              child: Text("Last Page", style: TextStyle(fontSize: 20.0, color: Colors.blueGrey)),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          )
        ],
      ),
    );
  }
}