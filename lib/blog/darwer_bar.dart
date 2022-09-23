
import 'dart:ui';

import 'package:flutter/material.dart';

class DarwerBar {

  static Drawer drawer(BuildContext context){
    return Drawer(
      child: ListView(
        children: [
          ListTile(
            tileColor: Colors.green,
            title: const Text("個人資料", style:TextStyle(fontSize: 24.0, color: Colors.yellow)),
            onTap: () {
              Navigator.pushNamed(context, "/account");
            },
          ),
          ListTile(
            tileColor: Colors.green,
            title: const Text("簡介", style:TextStyle(fontSize: 24.0, color: Colors.yellow)),
            onTap: () {
              Navigator.pushNamed(context, "/introduction");
            },
          ),
          ListTile(
            tileColor: Colors.green,
            title: const Text("興趣", style:TextStyle(fontSize: 24.0, color: Colors.yellow)),
            onTap: () {
              Navigator.pushNamed(context, "/hobby");
            },
          )
        ],
      ),
    );
  }
}