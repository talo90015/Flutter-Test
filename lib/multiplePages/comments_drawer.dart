

import 'package:flutter/material.dart';

class CommentsDrawer{


  static Drawer getDrawer(BuildContext context){
    return Drawer(
      child: ListView(
        children: [
           ListTile(
            title: Text("工作紀錄", style: TextStyle(fontSize: 30.0, color: Colors.green[900]),),
            onTap: () {
              Navigator.pushNamed(context, "/task");
            },
           ),
           ListTile(
            title: Text("數量紀錄", style: TextStyle(fontSize: 30.0, color: Colors.green[900]),),
            onTap: () {
              Navigator.pushNamed(context, "/amount");
            },
           )
        ],
      ),
    );
  }
}