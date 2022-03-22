import 'package:book_space/screens/bookingsScreen.dart';
import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              decoration:
                  BoxDecoration(color: Color.fromARGB(255, 245, 150, 220)),
              accountName: Text('Hazem'),
              accountEmail: null,
              currentAccountPicture: CircleAvatar(
                child: Icon(
                  Icons.person,
                  color: Colors.white,
                ),
                backgroundColor: Colors.grey,
              ),
            ),
            ListTile(
              onTap: () {
                
              },
              leading: Icon(
                Icons.home,
              ),
              title: Text('Home Page'),
            ),
            ExpansionTile(
              title: Text("Booking"),
              leading: Icon(Icons.store),
              children: [
                ListTile(
                  onTap: () {},
                  title: Text("  Individual"),
                ),
                ListTile(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => BookingsScreen()));
                  },
                  title: Text("  Room"),
                ),
              ],
            ),
            ListTile(
              onTap: () {},
              leading: Icon(Icons.discount),
              title: Text("Offers"),
            ),
            ListTile(
              onTap: () {},
              leading: Icon(Icons.shop_2),
              title: Text("Branches"),
            ),
            Divider(),
            ListTile(
              onTap: () {},
              leading: Icon(Icons.settings),
              title: Text("setting"),
            ),
            ListTile(
              onTap: () {},
              leading: Icon(Icons.help),
              title: Text("about us"),
            ),
          ],
        ),
      );
  }
}