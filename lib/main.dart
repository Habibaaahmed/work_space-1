import 'package:flutter/material.dart';
import 'package:flutter_application_6/aboutus.dart';
import 'package:flutter_application_6/cartpage.dart';
import 'package:flutter_application_6/favourite.dart';
import 'package:flutter_application_6/indiv.dart';
import 'package:flutter_application_6/login.dart';
import 'package:flutter_application_6/setting.dart';
import 'package:flutter_application_6/signup.dart';
import 'package:flutter_application_6/wocloth.dart';
import 'branch.dart';
import 'homescreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/login',
      routes: {
        '/home':(context) => HomeScreen(name: ''),
        '/login':(context) => Login(),
        '/signup':(context) => signup(),
        '/wocloth':(context) => wocloth(),
        '/favourite':(context) => favourite(),
        '/cart':(context) => cart(),
        '/aboutus':(context) => aboutus(),
        '/setting':(context) => setting(),
        '/branch':(context) => branch(),
        '/indiv':(context) => indiv(),
        

        
      },
    );
  }
}