

import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ColorExchange extends StatefulWidget{

  int red = 200;
  int bule = 200;
  int green = 200;

  double width = 300.0;
  double height = 300.0;

  //顏色狀態改變
  bool isColor = true;
  //按鈕狀態
  bool randomColor = false;
  bool roundButton = false;

  

  //物件回傳改變顏色
  @override
  State createState(){
    return _ColorExchange();
  }
}
class _ColorExchange extends State<ColorExchange>{

  @override
  Widget build(BuildContext context){

    Random random = Random();

    Widget initColor;
    if(this.widget.randomColor == true && this.widget.roundButton == false){
      this.widget.red = random.nextInt(255);
      this.widget.bule = random.nextInt(255);
      this.widget.green = random.nextInt(255);
      initColor = Container(
        width: 300,
        height: 300,
        color: Color.fromARGB(255, this.widget.red, this.widget.bule, this.widget.green),
      );
    } else if(this.widget.randomColor == false && this.widget.roundButton == true) {
      this.widget.width = random.nextInt(500).toDouble();
      this.widget.height = random.nextInt(500).toDouble();
      initColor = Container(
        width: this.widget.width,
        height: this.widget.height,
        color: Color.fromARGB(255, this.widget.red, this.widget.bule, this.widget.green),
      );
    } else {
      initColor = Container(
        width: 300,
        height: 300,
        color: Color.fromARGB(200, 200, 200, 200),
      );
    }
    return Scaffold(
        body: Container(
          alignment: Alignment.topCenter,
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.all(20.0),
                child: TextButton(
                  child: Text("隨機顏色", style: TextStyle(fontSize: 30.0, color:Colors.grey)),
                  onPressed: () {
                    setState(() {
                      this.widget.randomColor = true;
                      this.widget.roundButton = false;
                    });
                  },
                )
              ),
              Container(
                margin: EdgeInsets.all(20.0),
                child: TextButton(
                  child: Text("改變形狀", style: TextStyle(fontSize: 30.0, color: Colors.grey)),
                  onPressed: () {
                    setState(() {
                      this.widget.randomColor = false;
                      this.widget.roundButton = true;
                    });
                  },
                ),
              ),
              Container(
                margin: EdgeInsets.all(20.0),
                child: TextButton(
                  child: Text("預設", style: TextStyle(fontSize: 30.0, color: Colors.grey)),
                  onPressed: () {
                    setState(() {
                      this.widget.randomColor = false;
                      this.widget.roundButton = false;
                    });
                  },
                ),
              ),
              initColor
            ],
          ),
        ),
    );
  }
}