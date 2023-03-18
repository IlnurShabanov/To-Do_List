import 'package:flutter/material.dart';
import 'package:to_do_list/pages/home.dart';
import 'package:to_do_list/pages/main_screen.dart';

void main() => runApp(MaterialApp(
  theme:ThemeData(
    primaryColor: Colors.blue,
  ),
  initialRoute: '/',
  routes: {
    '/': (context) => MainScreen(),
    '/to_do_list':(context) => Home(),
  },
));
