import 'package:book_space/models/roomModel.dart';
import 'package:book_space/screens/bookDateScreen.dart';
import 'package:flutter/material.dart';

class RoomDetailsScreen extends StatelessWidget {
  final RoomModel? room;

  RoomDetailsScreen({@required this.room});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(room!.name!),
        backgroundColor: Colors.red,
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: Image.network(room!.images![1]),
              ),
              Card(
                  child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  room!.description!,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              )),
              Container(
                child: ElevatedButton(
                    onPressed: () {
                       Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => BookDateScreen(room: room!)));
                    },
                    child: Text(
                      'Book Now',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 40),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
