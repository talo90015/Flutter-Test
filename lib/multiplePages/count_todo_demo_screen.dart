
import 'package:demo/multiplePages/comments_drawer.dart';
import 'package:demo/multiplePages/todo_dao.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CountTodoDemoScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context){

    return Scaffold(
      appBar: AppBar(),
      drawer: CommentsDrawer.getDrawer(context),
      body: Container(
        child: Text("目前數量: " + context.read<TodoDao>().getTodos().length.toString(),
         style: TextStyle(fontSize: 30.0, color: Colors.red[900])),
      ),
    );
  }
}