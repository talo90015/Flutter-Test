
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ThirdScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Column(
        children: [
          Container(
            child: TextButton(
              child: Text("Go to Home",style: TextStyle(fontSize: 40.0, color: Colors.green)),
              onPressed: () {
                Navigator.pushNamed(context, "/");
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