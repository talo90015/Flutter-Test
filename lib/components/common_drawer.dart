

import 'dart:html';
import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CommonDrawer{
  static Drawer drawer(BuildContext context){
    return Drawer(
      child: ListView(
        children: [
          ListTile(
            tileColor: Colors.yellowAccent,
            title: const Text("First", style: TextStyle(fontSize: 20.0, color: Colors.green)),
            onTap: () {
              Navigator.pushNamed(context, "/first");
            },
          ),
          ListTile(
            tileColor: Colors.yellowAccent,
            title: const Text("Second", style: TextStyle(fontSize: 20.0, color: Colors.green)),
            onTap: () {
              Navigator.pushNamed(context, "/second");
            },
          ),
          ListTile(
            title: const Text("顏色變化"),
            onTap: () {
              Navigator.pushNamed(context, "/color");
            },
          ),
          ListTile(
            title: const Text("工作紀錄"),
            onTap: () {
              Navigator.pushNamed(context, "/task");
            },
          ),
          ListTile(
            title: const Text("工作數量"),
            onTap: () {
              Navigator.pushNamed(context, "/amount");
            },
          )
        ],
      ),
    );
  }
}