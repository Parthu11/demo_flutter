import 'package:flutter/material.dart';
import 'package:parths_app/UI/homepage.dart';

import 'UI/button.dart';
import 'UI/decoration.dart';
import 'UI/scrollview.dart';


void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false,
    initialRoute: '/',
    routes: {
      '/': (context) => const Homepage(),
      '/image': (context) => const SecondRoute(),
      '/button': (context) => const Button(),
      '/scroll': (context) => const Scroll(),
      '/decoration' : (context) => const Decorat(),
    },
  )); //MaterialApp
}

class Myapp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
      title: "Flutter App",
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      home:const Homepage(),
    );
  }

}