

import 'package:demo/components/common_drawer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class SecondScreen extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(),
      drawer: CommonDrawer.drawer(context),
      body: Column(
        children: [
          Container(
            child: TextButton(
              child: Text("Go to Third Page", style: TextStyle(fontSize: 40.0, color: Colors.yellow)),
              onPressed: () {
                Navigator.pushNamed(context, "/third");
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