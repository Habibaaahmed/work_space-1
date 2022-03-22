import 'package:book_space/models/roomModel.dart';
import 'package:book_space/providers/roomProvider.dart';
import 'package:book_space/screens/bookRoomScreen.dart';
import 'package:book_space/widgets/datePickerWidget.dart';
import 'package:book_space/widgets/timePickerWidget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BookDateScreen extends StatefulWidget {
  final RoomModel? room;
  BookDateScreen({@required this.room});

  @override
  State<BookDateScreen> createState() => _BookDateScreenState();
}

class _BookDateScreenState extends State<BookDateScreen> {
  DateTime? date;
  pickDate(BuildContext context) async {
    date = await showDatePicker(
        context: context,
        initialDate: date ?? DateTime.now(),
        firstDate: DateTime.now(),
        lastDate: DateTime.now().add(Duration(days: 7)));

    if (date == null) return;
    setState(() {});
  }

  String getText() {
    if (date == null) {
      return 'select date';
    } else {
      return '${date!.day}/${date!.month}/${date!.year}';
    }
  }

  TimeOfDay? time;
  pickTime(BuildContext context) async {
    time = await showTimePicker(
      context: context,
      initialTime: time ?? TimeOfDay.now(),
    );
    if (time == null) {
      return;
    }
    setState(() {});
  }

  String getText2() {
    if (time == null) {
      return 'select Time';
    } else if(date==null){
      return 'please choose the day first';
    }
    else if (time!.hour < 10 || time!.hour > 20) {
      return 'sorry this time out of range';
    } else if (Provider.of<RoomProvider>(context)
            .isRoomAvaliable(widget.room!, date!.day, time!.hour) ==
        false) {
      return 'sorry this hour is booked';
    } else {
      return '${time!.hour}:00';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text('Choose the time'),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 60,
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Text('Date'),
            ),
            InkWell(
              onTap: () {
                pickDate(context);
              },
              child: Container(
                width: MediaQuery.of(context).size.width * 0.7,
                height: 60,
                color: Colors.white,
                child: Center(
                  child: Text(getText()),
                ),
              ),
            ),
            SizedBox(
              height: 60,
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Text('Time'),
            ),
            InkWell(
              onTap: () {
                pickTime(context);
              },
              child: Container(
                width: MediaQuery.of(context).size.width * 0.7,
                height: 60,
                color: Colors.white,
                child: Center(
                  child: Text(getText2()),
                ),
              ),
            ),
            SizedBox(
              height: 60,
            ),
            InkWell(
              onTap: () {
                if (date == null) {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('please choose the day')));
                } else if (time == null) {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('please choose the time')));
                  
                } else if (time!.hour < 10 || time!.hour > 20) {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('please choose available time')));
                  
                } else if (Provider.of<RoomProvider>(context,listen: false)
                        .isRoomAvaliable(widget.room!, date!.day, time!.hour) ==
                    false) {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('sorry this time is booked')));
                      

                    }else{
                Provider.of<RoomProvider>(context, listen: false)
                    .bookRoom(widget.room!, date!.day, time!.hour);
                Provider.of<RoomProvider>(context, listen: false)
                    .addToBookingList(widget.room!, date!, time!.hour);

                Navigator.pop(context);}
              },
              child: Container(
                width: MediaQuery.of(context).size.width * 0.7,
                height: 60,
                color: Colors.blue,
                child: Center(
                  child: Text('CONFIRM'),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
