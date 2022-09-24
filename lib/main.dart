
import 'package:demo/blog/account.dart';
import 'package:demo/blog/hobby.dart';
import 'package:demo/blog/home.dart';
import 'package:demo/blog/introduction.dart';
import 'package:demo/screen/color_exchange.dart';
import 'package:demo/screen/colorful_screen.dart';
import 'package:demo/screen/first_screen.dart';
import 'package:demo/screen/home_screen.dart';
import 'package:demo/screen/second_screen.dart';
import 'package:demo/screen/third_screen.dart';
import 'package:flutter/material.dart';

class AppEntryPoint extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      routes: {
        "/home":(BuildContext context) => Home(),
        "/account":(BuildContext context) => Account(),
        "/introduction":(BuildContext context) => Introduction(),
        "/hobby":(BuildContext context) => Hobby(),
        "/color":(BuildContext content) => ColorfulScreen(),
        "/exColor":(BuildContext content) => ColorExchange()
      },
      initialRoute:"/exColor"
    );
  }
}
void main(List<String> args) {
  runApp(AppEntryPoint());
}

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