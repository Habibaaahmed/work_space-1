import 'package:book_space/screens/bookRoomScreen.dart';
import 'package:flutter/material.dart';

class GridWidget extends StatelessWidget {
  const GridWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      child: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 1.5,
        ),
        children: [
          Expanded(
            child: Container(
              child: InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => BookRoomScreen()));
                  },
                  child: Image.network('https://scontent.fcai19-7.fna.fbcdn.net/v/t39.30808-6/271218358_103404682230926_3840720885266071835_n.png?_nc_cat=111&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=-uIrdzvH4E4AX94oGiK&_nc_ht=scontent.fcai19-7.fna&oh=00_AT8L_dFY0PlNR45Y8z5iC8hfjxYIAEFzVzmFtQiXZg0HXg&oe=623D143A'),),
              height: 200,
            ),
          ),
          Expanded(
              child: Container(
                  child: InkWell(
                      onTap: () {
                        
                      },
                      child: Image.network('https://scontent.fcai19-7.fna.fbcdn.net/v/t39.30808-6/271218358_103404682230926_3840720885266071835_n.png?_nc_cat=111&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=-uIrdzvH4E4AX94oGiK&_nc_ht=scontent.fcai19-7.fna&oh=00_AT8L_dFY0PlNR45Y8z5iC8hfjxYIAEFzVzmFtQiXZg0HXg&oe=623D143A'),),
                  height: 200)),
          Expanded(
            child: Container(
              child: InkWell(
                  onTap: () {
                    
                  },
                  child: Image.network('https://scontent.fcai19-7.fna.fbcdn.net/v/t39.30808-6/271218358_103404682230926_3840720885266071835_n.png?_nc_cat=111&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=-uIrdzvH4E4AX94oGiK&_nc_ht=scontent.fcai19-7.fna&oh=00_AT8L_dFY0PlNR45Y8z5iC8hfjxYIAEFzVzmFtQiXZg0HXg&oe=623D143A'),),
              height: 200,
            ),
          ),
          Expanded(
            child: Container(
              child: InkWell(
                  onTap: () {
                    
                  },
                  child: Image.network('https://scontent.fcai19-7.fna.fbcdn.net/v/t39.30808-6/271218358_103404682230926_3840720885266071835_n.png?_nc_cat=111&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=-uIrdzvH4E4AX94oGiK&_nc_ht=scontent.fcai19-7.fna&oh=00_AT8L_dFY0PlNR45Y8z5iC8hfjxYIAEFzVzmFtQiXZg0HXg&oe=623D143A'),),
              height: 200,
            ),
          ),
        ],
      ),
    );
  }
}
