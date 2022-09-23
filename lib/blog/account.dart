

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Account extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 245, 211),
      body: Column(
        children: [
          Container(
            width: 200,
            alignment: Alignment.topCenter,
            color: Colors.green,
            margin: EdgeInsets.all(10.0),
            child: Container(
              child: Image(
                width: 200,
                height: 200,
                image: AssetImage("assets/image.PNG"),
              ),
            ),
          ),
          Container(
            alignment: Alignment.topCenter,
            margin: EdgeInsets.all(20.0),
            child: Text("Github", style: TextStyle(fontSize: 40.0, color: Colors.black)),
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