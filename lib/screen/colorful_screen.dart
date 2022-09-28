

import 'package:demo/components/common_drawer.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ColorfulScreen extends StatefulWidget{

  bool currentColorisRed = true;
  @override
  State createState(){
    return _ColorfulScreen();
  }  
}
class _ColorfulScreen extends State<ColorfulScreen>{

  @override
  Widget build(BuildContext context){
    print("進入build function時 widget的currentColorisRed");
    print(this.widget.currentColorisRed);

    Widget colorfulContainter;
    if(this.widget.currentColorisRed == true){
      colorfulContainter = Container(
        color: Colors.red,
        width: 500,
        height: 500,
      );
    } else {
      colorfulContainter = Container(
        color: Colors.blue,
        width: 500,
        height: 500,
      );
    }
    return Scaffold(
      appBar: AppBar(),
      drawer: CommonDrawer.drawer(context),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          children: [
            Container(
              child: TextButton(
                child: Text("點擊換色", style: TextStyle(fontSize: 28.0, color: Colors.grey)),
                onPressed: () {
                  setState(() {
                    print("進入build function時 widget的currentColorisRed");
                    print(this.widget.currentColorisRed);
                    this.widget.currentColorisRed =! this.widget.currentColorisRed;
                    print("進入build function時 widget的currentColorisRed");
                    print(this.widget.currentColorisRed);
                  });
                },
              ),
            ),
            colorfulContainter
          ],
        ),
      ),
    );
  }
}