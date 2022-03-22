import 'package:book_space/providers/roomProvider.dart';
import 'package:book_space/screens/bookRoomScreen.dart';
import 'package:book_space/screens/homeScreen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
      create: (context) => RoomProvider(),),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: HomeScreen()
      ),
    );
  }
}

