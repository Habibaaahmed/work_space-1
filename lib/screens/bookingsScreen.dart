import 'package:book_space/providers/roomProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BookingsScreen extends StatelessWidget {
  const BookingsScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bookingList = Provider.of<RoomProvider>(context,listen: true).bookingList;
    return Scaffold(
      appBar: AppBar(
        title: Text('My Bookings'),
        backgroundColor: Colors.red,
      ),
      body: ListView.builder(
        itemCount: bookingList.length,
        itemBuilder: (context,index){
          return ListTile(
            title: Text('${bookingList[index]['room']}'),
            subtitle:Text('${bookingList[index]['day'].day}/${bookingList[index]['day'].month}/${bookingList[index]['day'].year}    at   ${bookingList[index]['hour']}:00'),
          );
        },
      ),
    );
  }
}