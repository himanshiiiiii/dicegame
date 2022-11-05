import 'package:flutter/material.dart';
class MyHome extends StatefulWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  _MyHomeState createState() => _MyHomeState();
}

  class _MyHomeState extends State<MyHome> {
  Widget  _buttonWidget(){

  }
    @override
    Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
        appBar:AppBar(
          title:new Text('Digilocker'),
        ),
      ),
    body:_buttonWidget(),
    );
  }
}

