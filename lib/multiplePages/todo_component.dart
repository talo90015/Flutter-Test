
import 'package:demo/multiplePages/todo.dart';
import 'package:flutter/material.dart';

class TodoComponent extends StatefulWidget{

  Todo todo;
  TodoComponent(this.todo);

  @override
  State createState(){
    return _TodoComponentState();
  }
}

class _TodoComponentState extends State<TodoComponent>{

  @override
  Widget build(BuildContext context){
    
    //checkBox
    Widget checkTaskComplteBox = Container(

      child: Checkbox(
        value: this.widget.todo.isComplate,
        onChanged: (userCheck) {
          setState(() {
            this.widget.todo.isComplate = userCheck!;
          });
        },
      ),
    );
    //設定文字資料，依照isComplate狀態判斷，true:刪除線，flase:無刪除線
    Widget taskText = Container(
      child: Text(
        this.widget.todo.content,
        style: (this.widget.todo.isComplate == true) ? TextStyle
                (decoration: TextDecoration.lineThrough): TextStyle()
      ),
    );
    return Container(
      width: 400,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          checkTaskComplteBox,
          taskText
        ],
      ),
    );
  }
}