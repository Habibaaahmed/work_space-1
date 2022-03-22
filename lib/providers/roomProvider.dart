import 'package:book_space/models/roomModel.dart';
import 'package:flutter/material.dart';

class RoomProvider extends ChangeNotifier {
  List<RoomModel> rooms = [
    RoomModel(
        name: 'Room A',
        pricePerHour: 10,
        description: 'description',
        images: [
          'https://www.remotelock.com/sites/default/files/styles/blog_page/public/blog-post/Remotely-manage-coworking-conference-rooms.jpg?itok=Eyvbmvg_',
          'https://scontent.fcai19-7.fna.fbcdn.net/v/t39.30808-6/271218358_103404682230926_3840720885266071835_n.png?_nc_cat=111&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=-uIrdzvH4E4AX94oGiK&_nc_ht=scontent.fcai19-7.fna&oh=00_AT8L_dFY0PlNR45Y8z5iC8hfjxYIAEFzVzmFtQiXZg0HXg&oe=623D143A'
        ],
        times: [
          {
            'day': DateTime.now(),
            'avalibaleTimes': [10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20]
          },
          {
            'day': DateTime.now().add(Duration(days: 1)),
            'avalibaleTimes': [10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20]
          },
          {
            'day': DateTime.now().add(Duration(days: 2)),
            'avalibaleTimes': [10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20]
          },
          {
            'day': DateTime.now().add(Duration(days: 3)),
            'avalibaleTimes': [10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20]
          },
          {
            'day': DateTime.now().add(Duration(days: 4)),
            'avalibaleTimes': [10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20]
          },
          {
            'day': DateTime.now().add(Duration(days: 5)),
            'avalibaleTimes': [10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20]
          },
          {
            'day': DateTime.now().add(Duration(days: 6)),
            'avalibaleTimes': [10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20]
          },
        ]),
    RoomModel(
        name: 'Room B',
        pricePerHour: 10,
        description: 'description',
        images: [
          'https://scontent.fcai19-7.fna.fbcdn.net/v/t39.30808-6/271218358_103404682230926_3840720885266071835_n.png?_nc_cat=111&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=-uIrdzvH4E4AX94oGiK&_nc_ht=scontent.fcai19-7.fna&oh=00_AT8L_dFY0PlNR45Y8z5iC8hfjxYIAEFzVzmFtQiXZg0HXg&oe=623D143A',
          'https://scontent.fcai19-7.fna.fbcdn.net/v/t39.30808-6/271218358_103404682230926_3840720885266071835_n.png?_nc_cat=111&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=-uIrdzvH4E4AX94oGiK&_nc_ht=scontent.fcai19-7.fna&oh=00_AT8L_dFY0PlNR45Y8z5iC8hfjxYIAEFzVzmFtQiXZg0HXg&oe=623D143A'
        ],
        times: [
          {
            'day': DateTime.now(),
            'avalibaleTimes': [10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20]
          },
          {
            'day': DateTime.now().add(Duration(days: 1)),
            'avalibaleTimes': [10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20]
          },
          {
            'day': DateTime.now().add(Duration(days: 2)),
            'avalibaleTimes': [10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20]
          },
          {
            'day': DateTime.now().add(Duration(days: 3)),
            'avalibaleTimes': [10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20]
          },
          {
            'day': DateTime.now().add(Duration(days: 4)),
            'avalibaleTimes': [10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20]
          },
          {
            'day': DateTime.now().add(Duration(days: 5)),
            'avalibaleTimes': [10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20]
          },
          {
            'day': DateTime.now().add(Duration(days: 6)),
            'avalibaleTimes': [10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20]
          },
        ]),
  ];

  List<Map<String, dynamic>> bookingList = [];

  void bookRoom(RoomModel room, int weekDay, int hour) {

    var day = room.times!.firstWhere((element) => element['day'].day == weekDay);
    if (day == null) {
      return;
    }
    day['avalibaleTimes'].remove(hour);
    notifyListeners();
  }

  bool isRoomAvaliable(RoomModel room, int weekDay, int hour) {
    var day = room.times!.firstWhere((element) => element['day'].day == weekDay);
    return day['avalibaleTimes'].contains(hour);
  }

  void addToBookingList(RoomModel room, DateTime weekDay, int hour) {
    bookingList.insert(0, {'room': room.name, 'day': weekDay, 'hour': hour});

    notifyListeners();
  }
}
