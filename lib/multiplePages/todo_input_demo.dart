
import 'package:demo/multiplePages/comments_drawer.dart';
import 'package:demo/multiplePages/todo_component.dart';
import 'package:demo/multiplePages/todo_dao.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TodoInputDemoScreen extends StatefulWidget{

  @override
  State createState(){
    return _TodoInputDemoScreen();
  }
}

class _TodoInputDemoScreen extends State<TodoInputDemoScreen>{

  @override
  Widget build(BuildContext context){

    var textEditController = TextEditingController();

    Widget userInputTextField = Container(
      width: 400,
      child: TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          hintText: "輸入"
        ),
        controller: textEditController,
        onSubmitted: (inputValue) {
          setState(() {
            context.read<TodoDao>().insertTodo(inputValue);
            textEditController.clear();
          });
        },
      ),
    );

    return Scaffold(
        appBar: AppBar(),
        drawer: CommentsDrawer.getDrawer(context),
        body: Container(
          alignment: Alignment.topCenter,
          child: Column(
            children: [
              userInputTextField,
              ...context.watch<TodoDao>().getTodos().map(
                (taskTodo) => Container(child: TodoComponent(taskTodo))
              ).toList()
            ],
          ),
        ),
    );
  }
}