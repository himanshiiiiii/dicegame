import 'package:flutter/material.dart';
import 'package:untitled4/login.dart';
import 'package:untitled4/register.dart';
 // import 'package:untitled4/homepage.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyLogin(),
    routes: {
      // 'homepage':(context) => DicePage(),
      'register': (context) => MyRegister(),
      'login': (context) => MyLogin(),
    },
  ),
  );
}



