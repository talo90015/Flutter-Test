

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Calculator extends StatefulWidget{

  bool acBtn = true;
  double totalValue = 0;
  double secondValue = 0;
  int pressAction = -1;
  //初始化
  String initNumber = "0";

  @override
  State createState(){
    return _Calculator();
  }
}

class _Calculator extends State<Calculator>{
  @override
  Widget build(BuildContext context){
    
    var textString = TextEditingController();

    Widget textResult = Container(
      width: 400,
      margin: EdgeInsets.only(top: 20.0, bottom: 20.0),
      color: Colors.white,
      child: TextField(
        textAlign: TextAlign.right,
        style: TextStyle(fontSize: 30.0, color: Colors.grey),
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          hintText: this.widget.initNumber
        ),
        controller: textString,
        onChanged: (value) {
          this.widget.totalValue = double.parse(value);
        },
      ),
    );

    return Scaffold(

      body: Container(
        width: 500,
        height: 650,
        color: Color.fromARGB(255, 48, 47, 47),
        alignment: Alignment.topCenter,
        margin: EdgeInsets.all(15.0),
        child: Column(
          children: [
            textResult,
            Container(
              width: 500,
              height: 100,
              margin: EdgeInsets.only(left: 45, top: 3),
              child: Row(
                children: [
                  Container(
                    width: 80,
                    height: 80,
                    color: Color.fromARGB(40, 172, 199, 125),
                    child: TextButton(
                      child: Text("7", style: TextStyle(fontSize: 25.0, color: Colors.grey)),
                      onPressed: () {
                        setState(() {
                          if(this.widget.acBtn == true){
                          if(this.widget.totalValue == 0){
                            this.widget.totalValue = 7;
                            this.widget.initNumber = this.widget.totalValue.toString();
                          }else{
                            this.widget.totalValue = double.parse(this.widget.totalValue.toString() + "7");
                            this.widget.initNumber = this.widget.totalValue.toString();
                          }
                        }else if(this.widget.acBtn == false){
                          if(this.widget.secondValue == 0){
                            this.widget.secondValue = 7;
                            this.widget.initNumber = this.widget.secondValue.toString();
                          }else{
                            this.widget.secondValue = double.parse(this.widget.secondValue.toString() + "7");
                            this.widget.initNumber = this.widget.secondValue.toString();
                          }
                        }
                        });
                      },
                    ),
                  ),
                  Container(
                    width: 80,
                    height: 80,
                    color: Color.fromARGB(40, 172, 199, 125),
                    margin: EdgeInsets.only(left: 10.0),
                    child: TextButton(
                      child: Text("8", style: TextStyle(fontSize: 25.0, color: Colors.grey)),
                      onPressed: () {
                        setState(() {
                          if(this.widget.acBtn == true){
                          if(this.widget.totalValue == 0){
                            this.widget.totalValue = 8;
                            this.widget.initNumber = this.widget.totalValue.toString();
                          }else{
                            this.widget.totalValue = double.parse(this.widget.totalValue.toString() + "8");
                            this.widget.initNumber = this.widget.totalValue.toString();
                          }
                        }else if(this.widget.acBtn == false){
                          if(this.widget.secondValue == 0){
                            this.widget.secondValue = 8;
                            this.widget.initNumber = this.widget.secondValue.toString();
                          }else{
                            this.widget.secondValue = double.parse(this.widget.secondValue.toString() + "8");
                            this.widget.initNumber = this.widget.secondValue.toString();
                          }
                        }
                        });
                      },
                    ),
                  ),
                  Container(
                    width: 80,
                    height: 80,
                    color: Color.fromARGB(40, 172, 199, 125),
                    margin: EdgeInsets.only(left: 10.0),
                    child: TextButton(
                      child: Text("9", style: TextStyle(fontSize: 25.0, color: Colors.grey)),
                      onPressed: () {
                        setState(() {
                          if(this.widget.acBtn == true){
                          if(this.widget.totalValue == 0){
                            this.widget.totalValue = 9;
                            this.widget.initNumber = this.widget.totalValue.toString();
                          }else{
                            this.widget.totalValue = double.parse(this.widget.totalValue.toString() + "9");
                            this.widget.initNumber = this.widget.totalValue.toString();
                          }
                        }else if(this.widget.acBtn == false){
                          if(this.widget.secondValue == 0){
                            this.widget.secondValue = 9;
                            this.widget.initNumber = this.widget.secondValue.toString();
                          }else{
                            this.widget.secondValue = double.parse(this.widget.secondValue.toString() + "9");
                            this.widget.initNumber = this.widget.secondValue.toString();
                          }
                        }
                        });
                      },
                    ),
                  ),
                  Container(
                    width: 80,
                    height: 80,
                    color: Color.fromARGB(40, 172, 199, 125),
                    margin: EdgeInsets.only(left: 10.0),
                    child: TextButton(
                      child: Text("/", style: TextStyle(fontSize: 25.0, color: Colors.grey)),
                      
                      onPressed: () {
                        setState(() {
                          if (this.widget.acBtn == false) {
                              if (this.widget.pressAction == 1) {
                                this.widget.initNumber = (this.widget.totalValue / this.widget.secondValue).toStringAsFixed(6);
                                this.widget.totalValue = this.widget.totalValue / this.widget.secondValue;
                                this.widget.secondValue = 0;
                                this.widget.acBtn = false;
                                this.widget.pressAction = 1;
                              } else if (this.widget.pressAction == 2) {
                                this.widget.initNumber = (this.widget.totalValue * this.widget.secondValue).toStringAsFixed(6);
                                this.widget.totalValue = this.widget.totalValue * this.widget.secondValue;
                                this.widget.secondValue = 0;
                                this.widget.acBtn = false;
                                this.widget.pressAction = 1;
                              } else if (this.widget.pressAction == 3) {
                                this.widget.initNumber = (this.widget.totalValue - this.widget.secondValue).toStringAsFixed(6);
                                this.widget.totalValue = this.widget.totalValue - this.widget.secondValue;
                                this.widget.secondValue = 0;
                                this.widget.acBtn = false;
                                this.widget.pressAction = 1;
                              } else if (this.widget.pressAction == 4) {
                                this.widget.initNumber = (this.widget.totalValue + this.widget.secondValue).toStringAsFixed(6);
                                this.widget.totalValue = this.widget.totalValue + this.widget.secondValue;
                                this.widget.secondValue = 0;
                                this.widget.acBtn = false;
                                this.widget.pressAction = 1;
                              } else {
                                this.widget.pressAction = 1;
                              }
                            } else {
                              this.widget.pressAction = 1;
                              this.widget.initNumber = this.widget.totalValue.toString();
                              this.widget.acBtn = false;
                            }
                        }); 
                      },
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 500,
              height: 100,
              margin: EdgeInsets.only(left: 45, top: 3),
              child: Row(
                children: [
                  Container(
                    width: 80,
                    height: 80,
                    color: Color.fromARGB(40, 172, 199, 125),
                    child: TextButton(
                      child: Text("4", style: TextStyle(fontSize: 25.0, color: Colors.grey)),
                      onPressed: () {
                        setState(() {
                          if(this.widget.acBtn == true){
                          if(this.widget.totalValue == 0){
                            this.widget.totalValue = 4;
                            this.widget.initNumber = this.widget.totalValue.toString();
                          }else{
                            this.widget.totalValue = double.parse(this.widget.totalValue.toString() + "4");
                            this.widget.initNumber = this.widget.totalValue.toString();
                          }
                        }else if(this.widget.acBtn == false){
                          if(this.widget.secondValue == 0){
                            this.widget.secondValue = 4;
                            this.widget.initNumber = this.widget.secondValue.toString();
                          }else{
                            this.widget.secondValue = double.parse(this.widget.secondValue.toString() + "4");
                            this.widget.initNumber = this.widget.secondValue.toString();
                          }
                        }
                        });
                      },
                    ),
                  ),
                  Container(
                    width: 80,
                    height: 80,
                    color: Color.fromARGB(40, 172, 199, 125),
                    margin: EdgeInsets.only(left: 10.0),
                    child: TextButton(
                      child: Text("5", style: TextStyle(fontSize: 25.0, color: Colors.grey)),
                      onPressed: () {
                        setState(() {
                           if(this.widget.acBtn == true){
                          if(this.widget.totalValue == 0){
                            this.widget.totalValue = 5;
                            this.widget.initNumber = this.widget.totalValue.toString();
                          }else{
                            this.widget.totalValue = double.parse(this.widget.totalValue.toString() + "5");
                            this.widget.initNumber = this.widget.totalValue.toString();
                          }
                        }else if(this.widget.acBtn == false){
                          if(this.widget.secondValue == 0){
                            this.widget.secondValue = 5;
                            this.widget.initNumber = this.widget.secondValue.toString();
                          }else{
                            this.widget.secondValue = double.parse(this.widget.secondValue.toString() + "5");
                            this.widget.initNumber = this.widget.secondValue.toString();
                          }
                        }
                        });
                      },
                    ),
                  ),
                  Container(
                    width: 80,
                    height: 80,
                    color: Color.fromARGB(40, 172, 199, 125),
                    margin: EdgeInsets.only(left: 10.0),
                    child: TextButton(
                      child: Text("6", style: TextStyle(fontSize: 25.0, color: Colors.grey)),
                      onPressed: () {
                        setState(() {
                          if(this.widget.acBtn == true){
                          if(this.widget.totalValue == 0){
                            this.widget.totalValue = 6;
                            this.widget.initNumber = this.widget.totalValue.toString();
                          }else{
                            this.widget.totalValue = double.parse(this.widget.totalValue.toString() + "6");
                            this.widget.initNumber = this.widget.totalValue.toString();
                          }
                        }else if(this.widget.acBtn == false){
                          if(this.widget.secondValue == 0){
                            this.widget.secondValue = 6;
                            this.widget.initNumber = this.widget.secondValue.toString();
                          }else{
                            this.widget.secondValue = double.parse(this.widget.secondValue.toString() + "6");
                            this.widget.initNumber = this.widget.secondValue.toString();
                          }
                        }
                        });
                      },
                    ),
                  ),
                  Container(
                    width: 80,
                    height: 80,
                    color: Color.fromARGB(40, 172, 199, 125),
                    margin: EdgeInsets.only(left: 10.0),
                    child: TextButton(
                      child: Text("*", style: TextStyle(fontSize: 25.0, color: Colors.grey)),
                      onPressed: () {
                        setState(() {
                          if (this.widget.acBtn == false) {
                              if (this.widget.pressAction == 1) {
                                this.widget.initNumber = (this.widget.totalValue / this.widget.secondValue).toStringAsFixed(6);
                                this.widget.totalValue = this.widget.totalValue / this.widget.secondValue;
                                this.widget.secondValue = 0;
                                this.widget.acBtn = false;
                                this.widget.pressAction = 2;
                              } else if (this.widget.pressAction == 2) {
                                this.widget.initNumber = (this.widget.totalValue * this.widget.secondValue).toStringAsFixed(6);
                                this.widget.totalValue = this.widget.totalValue * this.widget.secondValue;
                                this.widget.secondValue = 0;
                                this.widget.acBtn = false;
                                this.widget.pressAction = 2;
                              } else if (this.widget.pressAction == 3) {
                                this.widget.initNumber = (this.widget.totalValue - this.widget.secondValue).toStringAsFixed(6);
                                this.widget.totalValue = this.widget.totalValue - this.widget.secondValue;
                                this.widget.secondValue = 0;
                                this.widget.acBtn = false;
                                this.widget.pressAction = 2;
                              } else if (this.widget.pressAction == 4) {
                                this.widget.initNumber = (this.widget.totalValue + this.widget.secondValue).toStringAsFixed(6);
                                this.widget.totalValue = this.widget.totalValue + this.widget.secondValue;
                                this.widget.secondValue = 2;
                                this.widget.acBtn = false;
                                this.widget.pressAction = 2;
                              } else {
                                this.widget.pressAction = 2;
                              }
                            } else {
                              this.widget.pressAction = 2;
                              this.widget.initNumber = this.widget.totalValue.toString();
                              this.widget.acBtn = false;
                            }
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 500,
              height: 100,
              margin: EdgeInsets.only(left: 45, top: 3),
              child: Row(
                children: [
                  Container(
                    width: 80,
                    height: 80,
                    color: Color.fromARGB(40, 172, 199, 125),
                    child: TextButton(
                      child: Text("1", style: TextStyle(fontSize: 25.0, color: Colors.grey)),
                      onPressed: () {
                        setState(() {
                          if(this.widget.acBtn == true){
                          if(this.widget.totalValue == 0){
                            this.widget.totalValue = 1;
                            this.widget.initNumber = this.widget.totalValue.toString();
                          }else{
                            this.widget.totalValue = double.parse(this.widget.totalValue.toString() + "1");
                            this.widget.initNumber = this.widget.totalValue.toString();
                          }
                        }else if(this.widget.acBtn == false){
                          if(this.widget.secondValue == 0){
                            this.widget.secondValue = 1;
                            this.widget.initNumber = this.widget.secondValue.toString();
                          }else{
                            this.widget.secondValue = double.parse(this.widget.secondValue.toString() + "1");
                            this.widget.initNumber = this.widget.secondValue.toString();
                          }
                        }
                        });
                      },
                    ),
                  ),
                  Container(
                    width: 80,
                    height: 80,
                    color: Color.fromARGB(40, 172, 199, 125),
                    margin: EdgeInsets.only(left: 10.0),
                    child: TextButton(
                      child: Text("2", style: TextStyle(fontSize: 25.0, color: Colors.grey)),
                      onPressed: () {
                        setState(() {
                          if(this.widget.acBtn == true){
                          if(this.widget.totalValue == 0){
                            this.widget.totalValue = 2;
                            this.widget.initNumber = this.widget.totalValue.toString();
                          }else{
                            this.widget.totalValue = double.parse(this.widget.totalValue.toString() + "2");
                            this.widget.initNumber = this.widget.totalValue.toString();
                          }
                        }else if(this.widget.acBtn == false){
                          if(this.widget.secondValue == 0){
                            this.widget.secondValue = 2;
                            this.widget.initNumber = this.widget.secondValue.toString();
                          }else{
                            this.widget.secondValue = double.parse(this.widget.secondValue.toString() + "2");
                            this.widget.initNumber = this.widget.secondValue.toString();
                          }
                        }
                        });
                      },
                    ),
                  ),
                  Container(
                    width: 80,
                    height: 80,
                    color: Color.fromARGB(40, 172, 199, 125),
                    margin: EdgeInsets.only(left: 10.0),
                    child: TextButton(
                      child: Text("3", style: TextStyle(fontSize: 25.0, color: Colors.grey)),
                      onPressed: () {
                        setState(() {
                          if(this.widget.acBtn == true){
                          if(this.widget.totalValue == 0){
                            this.widget.totalValue = 3;
                            this.widget.initNumber = this.widget.totalValue.toString();
                          }else{
                            this.widget.totalValue = double.parse(this.widget.totalValue.toString() + "3");
                            this.widget.initNumber = this.widget.totalValue.toString();
                          }
                        }else if(this.widget.acBtn == false){
                          if(this.widget.secondValue == 0){
                            this.widget.secondValue = 3;
                            this.widget.initNumber = this.widget.secondValue.toString();
                          }else{
                            this.widget.secondValue = double.parse(this.widget.secondValue.toString() + "3");
                            this.widget.initNumber = this.widget.secondValue.toString();
                          }
                        }
                        });
                      },
                    ),
                  ),
                  Container(
                    width: 80,
                    height: 80,
                    color: Color.fromARGB(40, 172, 199, 125),
                    margin: EdgeInsets.only(left: 10.0),
                    child: TextButton(
                      child: Text("-", style: TextStyle(fontSize: 25.0, color: Colors.grey)),
                      onPressed: () {
                        setState(() {
                          if (this.widget.acBtn == false) {
                              if (this.widget.pressAction == 1) {
                                this.widget.initNumber = (this.widget.totalValue / this.widget.secondValue).toStringAsFixed(6);
                                this.widget.totalValue = this.widget.totalValue / this.widget.secondValue;
                                this.widget.secondValue = 0;
                                this.widget.acBtn = false;
                                this.widget.pressAction = 3;
                              } else if (this.widget.pressAction == 2) {
                                this.widget.initNumber = (this.widget.totalValue * this.widget.secondValue).toStringAsFixed(6);
                                this.widget.totalValue = this.widget.totalValue * this.widget.secondValue;
                                this.widget.secondValue = 0;
                                this.widget.acBtn = false;
                                this.widget.pressAction = 3;
                              } else if (this.widget.pressAction == 3) {
                                this.widget.initNumber = (this.widget.totalValue - this.widget.secondValue).toStringAsFixed(6);
                                this.widget.totalValue = this.widget.totalValue - this.widget.secondValue;
                                this.widget.secondValue = 0;
                                this.widget.acBtn = false;
                                this.widget.pressAction = 3;
                              } else if (this.widget.pressAction == 4) {
                                this.widget.initNumber = (this.widget.totalValue + this.widget.secondValue).toStringAsFixed(6);
                                this.widget.totalValue = this.widget.totalValue + this.widget.secondValue;
                                this.widget.secondValue = 0;
                                this.widget.acBtn = false;
                                this.widget.pressAction = 3;
                              } else {
                                this.widget.pressAction = 3;
                              }
                            } else {
                              this.widget.pressAction = 3;
                              this.widget.initNumber = this.widget.totalValue.toString();
                              this.widget.acBtn = false;
                            }
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 500,
              height: 100,
              margin: EdgeInsets.only(left: 45, top: 3),
              child: Row(
                children: [
                  Container(
                    width: 170,
                    height: 80,
                    color: Color.fromARGB(40, 172, 199, 125),
                    child: TextButton(
                      child: Text("0", style: TextStyle(fontSize: 25.0, color: Colors.grey)),
                      onPressed: () {
                        setState(() {
                          if(this.widget.acBtn == true){
                          if(this.widget.totalValue == 0){
                            this.widget.totalValue = 0;
                            this.widget.initNumber = this.widget.totalValue.toString();
                          }else{
                            this.widget.totalValue = double.parse(this.widget.totalValue.toString() + "0");
                            this.widget.initNumber = this.widget.totalValue.toString();
                          }
                        }else if(this.widget.acBtn == false){
                          if(this.widget.secondValue == 0){
                            this.widget.secondValue = 0;
                            this.widget.initNumber = this.widget.secondValue.toString();
                          }else{
                            this.widget.secondValue = double.parse(this.widget.secondValue.toString() + "0");
                            this.widget.initNumber = this.widget.secondValue.toString();
                          }
                        }
                        });
                      },
                    ),
                  ),
                  Container(
                    width: 80,
                    height: 80,
                    color: Color.fromARGB(40, 172, 199, 125),
                    margin: EdgeInsets.only(left: 10.0),
                    child: TextButton(
                      child: Text("=", style: TextStyle(fontSize: 25.0, color: Colors.grey)),
                      onPressed: () {
                        setState(() {
                          if (this.widget.acBtn == false) {
                              if (this.widget.pressAction == 1) {
                                this.widget.initNumber = (this.widget.totalValue / this.widget.secondValue).toStringAsFixed(6);
                                this.widget.totalValue = this.widget.totalValue / this.widget.secondValue;
                                this.widget.secondValue = 0;
                                this.widget.acBtn = false;
                                this.widget.pressAction = -1;
                              } else if (this.widget.pressAction == 2) {
                                this.widget.initNumber = (this.widget.totalValue * this.widget.secondValue).toStringAsFixed(6);
                                this.widget.totalValue = this.widget.totalValue * this.widget.secondValue;
                                this.widget.secondValue = 0;
                                this.widget.acBtn = false;
                                this.widget.pressAction = -1;
                              } else if (this.widget.pressAction == 3) {
                                this.widget.initNumber = (this.widget.totalValue - this.widget.secondValue).toStringAsFixed(6);
                                this.widget.totalValue = this.widget.totalValue - this.widget.secondValue;
                                this.widget.secondValue = 0;
                                this.widget.acBtn = false;
                                this.widget.pressAction = -1;
                              } else if (this.widget.pressAction == 4) {
                                this.widget.initNumber = (this.widget.totalValue + this.widget.secondValue).toStringAsFixed(6);
                                this.widget.totalValue = this.widget.totalValue + this.widget.secondValue;
                                this.widget.secondValue = 0;
                                this.widget.acBtn = false;
                                this.widget.pressAction = -1;
                              } else {
                                this.widget.pressAction = -1;
                              }
                            } else {
                              this.widget.pressAction = -1;
                              this.widget.initNumber = this.widget.totalValue.toString();
                              this.widget.acBtn = false;
                            }
                        });
                      },
                    ),
                  ),
                  Container(
                    width: 80,
                    height: 80,
                    color: Color.fromARGB(40, 172, 199, 125),
                    margin: EdgeInsets.only(left: 10.0),
                    child: TextButton(
                      child: Text("+", style: TextStyle(fontSize: 25.0, color: Colors.grey)),
                      onPressed: () {
                        setState(() {
                          if (this.widget.acBtn == false) {
                              if (this.widget.pressAction == 1) {
                                this.widget.initNumber = (this.widget.totalValue / this.widget.secondValue).toStringAsFixed(6);
                                this.widget.totalValue = this.widget.totalValue / this.widget.secondValue;
                                this.widget.secondValue = 0;
                                this.widget.acBtn = false;
                                this.widget.pressAction = 4;
                              } else if (this.widget.pressAction == 2) {
                                this.widget.initNumber = (this.widget.totalValue * this.widget.secondValue).toStringAsFixed(6);
                                this.widget.totalValue = this.widget.totalValue * this.widget.secondValue;
                                this.widget.secondValue = 0;
                                this.widget.acBtn = false;
                                this.widget.pressAction = 4;
                              } else if (this.widget.pressAction == 3) {
                                this.widget.initNumber = (this.widget.totalValue - this.widget.secondValue).toStringAsFixed(6);
                                this.widget.totalValue = this.widget.totalValue - this.widget.secondValue;
                                this.widget.secondValue = 0;
                                this.widget.acBtn = false;
                                this.widget.pressAction = 4;
                              } else if (this.widget.pressAction == 4) {
                                this.widget.initNumber = (this.widget.totalValue + this.widget.secondValue).toStringAsFixed(6);
                                this.widget.totalValue = this.widget.totalValue + this.widget.secondValue;
                                this.widget.secondValue = 0;
                                this.widget.acBtn = false;
                                this.widget.pressAction = 4;
                              } else {
                                this.widget.pressAction = 4;
                              }
                            } else {
                              this.widget.pressAction = 4;
                              this.widget.initNumber = this.widget.totalValue.toString();
                              this.widget.acBtn = false;
                            }
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 500,
              height: 100,
              margin: EdgeInsets.only(left: 45, top: 3),
              child: Row(
                children: [
                  Container(
                    width: 350,
                    height: 80,
                    color: Color.fromARGB(40, 172, 199, 125),
                    child: TextButton(
                      child: Text("A/C", style: TextStyle(fontSize: 25.0, color: Colors.grey)),
                      onPressed: () {
                        setState(() {
                          this.widget.acBtn = true;
                        this.widget.initNumber = "0";
                        this.widget.totalValue = 0;
                        this.widget.secondValue = 0;
                        this.widget.pressAction = -1;
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}