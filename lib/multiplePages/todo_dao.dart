
import 'package:demo/multiplePages/todo.dart';
import 'package:flutter/cupertino.dart';

class TodoDao extends ChangeNotifier{

  List<Todo> todoList = [];

  List<Todo> getTodos(){
    return todoList;
  }

  void insertTodo(String inputContent){
    todoList.add(Todo(false, inputContent));
    notifyListeners();
  }

  void updateTodo(Todo todo){
    todoList[todoList.indexOf(todo)] = todo;
    notifyListeners();
  }

}