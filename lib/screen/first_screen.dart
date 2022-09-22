
import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Column(
        children: [
          Container(
            child: TextButton(
              child: Text("Go to Second Page", style: TextStyle(fontSize: 40.0, color: Colors.red)),
              onPressed: () {
                Navigator.pushNamed(context, "/second");
              },
            ),
          ),
          Container(
            child: TextButton(
              child: Text("Last Page", style: TextStyle(fontSize: 40.0, color: Colors.orange)),
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