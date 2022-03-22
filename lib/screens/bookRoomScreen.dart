import 'package:book_space/providers/roomProvider.dart';
import 'package:book_space/screens/RoomDetailsScreen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BookRoomScreen extends StatelessWidget {
  const BookRoomScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final rooms = Provider.of<RoomProvider>(context).rooms;
    
    return Scaffold(
      appBar: AppBar(
        title: Text('Rooms'),
        backgroundColor: Colors.red,
      ),
      body: ListView.builder(
        itemCount: rooms.length,
        itemBuilder: (context,index){
          return ListTile(
            leading: Image.network(rooms[index].images![1]),
            title: Text(rooms[index].name!),
            subtitle: Text('${rooms[index].pricePerHour} LE per hour'),
            onTap: (){
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => RoomDetailsScreen(room: rooms[index],)));
             },
          );
        },
      ),



    );
}}