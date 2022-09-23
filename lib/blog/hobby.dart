
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Hobby extends StatelessWidget{
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
            child: Text("興趣", style: TextStyle(fontSize: 40.0, color: Colors.black)),
          ),
          Container(
            width: 450,
            color: Colors.green,
            alignment: Alignment.topCenter,
            margin: EdgeInsets.all(10.0),
            child: Text("Coding和閱讀", style: TextStyle(fontSize: 25.0, color: Colors.black)),
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