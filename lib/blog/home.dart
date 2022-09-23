
import 'dart:async';

import 'package:demo/blog/darwer_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(),
      drawer: DarwerBar.drawer(context),
      body: Column(
        children: [
          Container(
            color: Colors.yellowAccent,
            alignment: Alignment.center,
            margin: EdgeInsets.all(50.0),
            child: Container(
              child: Text("這是首頁", style: TextStyle(fontSize: 48.0, color: Colors.grey)),
            ),
          ),
        ],
      ),
    );
  }
}