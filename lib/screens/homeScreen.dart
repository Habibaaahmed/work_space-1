import 'package:book_space/widgets/carouselWidget.dart';
import 'package:book_space/widgets/drawerWidget.dart';
import 'package:book_space/widgets/gridWidget.dart';
import 'package:flutter/material.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Book Space',style:TextStyle(color: Color.fromARGB(255, 245, 244, 245), fontSize: 24,fontWeight: FontWeight.bold)),
        backgroundColor: Colors.red,
      ),
      drawer: DrawerWidget(),
      body: ListView(
        children: [
          // CarouselWidget(),
          Padding(padding: EdgeInsets.all(8),
           child: Text("Book",style: TextStyle(fontWeight:FontWeight.bold,color: Color.fromARGB(255, 90, 90, 90),fontSize: 20),),
           ),
           GridWidget(),

        ],
      ),
    );
  }
}
