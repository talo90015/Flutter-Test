
import 'package:demo/blog/account.dart';
import 'package:demo/blog/hobby.dart';
import 'package:demo/blog/home.dart';
import 'package:demo/blog/introduction.dart';
import 'package:demo/calculator/calculator.dart';
import 'package:demo/multiplePages/count_todo_demo_screen.dart';
import 'package:demo/multiplePages/todo_dao.dart';
import 'package:demo/multiplePages/todo_input_demo.dart';

import 'package:demo/screen/color_exchange.dart';
import 'package:demo/screen/colorful_screen.dart';
import 'package:demo/screen/first_screen.dart';
import 'package:demo/screen/home_screen.dart';
import 'package:demo/screen/inputTest.dart';
import 'package:demo/screen/second_screen.dart';
import 'package:demo/screen/third_screen.dart';
import 'package:demo/screen/todo_input_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';       

class AppEntryPoint extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      routes: {
        "/task":(BuildContext context) => TodoInputDemoScreen(),
        "/amount":(BuildContext context) => CountTodoDemoScreen(),
      },
      initialRoute:"/task"
    );
  }
}
void main(List<String> args) {
  runApp(
      MultiProvider(
        providers:[
          ChangeNotifierProvider(create:(_) => TodoDao(),)
        ],
        child: AppEntryPoint(),
      )
  );
}

// class AppEntryPoint extends StatelessWidget{
//   @override
//   Widget build(BuildContext context){
//     return MaterialApp(
//       routes: {
//         "/home":(BuildContext context) => Home(),
//         "/account":(BuildContext context) => Account(),
//         "/introduction":(BuildContext context) => Introduction(),
//         "/hobby":(BuildContext context) => Hobby(),
//         "/color":(BuildContext content) => ColorfulScreen(),
//         "/exColor":(BuildContext content) => ColorExchange(),
//         "/inputText":(BuildContext content) => TodoInputScreen(),
//         "/calculator":(BuildContext content) => Calculator(),
//         "/inputTest":(BuildContext content) => InputTest(),
//       },
//       initialRoute:"/inputTest"
//     );
//   }
// }
// void main(List<String> args) {
//   runApp(AppEntryPoint());
// }
//personal blug
// class AppEntryPoint extends StatelessWidget{
//   @override
//   Widget build(BuildContext context){
//     return MaterialApp(
//       routes: {
//         "/home":(BuildContext context) => Home(),
//         "/account":(BuildContext context) => Account(),
//         "/introduction":(BuildContext context) => Introduction(),
//         "/hobby":(BuildContext context) => Hobby()
//       },
//       initialRoute:"/home"
//     );
//   }
// }
// void main(List<String> args) {
//   runApp(AppEntryPoint());
// }