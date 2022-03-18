
import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter_application_6/wocloth.dart';



class HomeScreen extends StatefulWidget { 
  final String name;
  HomeScreen({Key? mykey,required this.name}):super(key: mykey);
 
   @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
    @override 
  Widget build(BuildContext context) {
    final String name;

    Widget image_carousel = Container(
      height: 200,
      child: Carousel(
        boxFit: BoxFit.cover,
        images: [
          Image.asset('1.jpg'),
          Image.asset('2.jpg'),
          Image.asset('3.jpg'),
          Image.asset('4.jpg'),
          Image.asset('5.jpg'),
          Image.asset('6.jpg'),
        ],
        
        autoplay: true,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(milliseconds: 1000),
        dotSize: 6,
        indicatorBgPadding: 9,
      ),
    );
   return Scaffold(
     drawer: Drawer(
       child: ListView(
         children: [
          UserAccountsDrawerHeader(
           decoration: BoxDecoration(color: Color.fromARGB(255, 245, 150, 220)),
           accountName: Text('${widget.name}') , accountEmail: null,
           currentAccountPicture:
          
            CircleAvatar
                      (
                      child: Icon(Icons.person,color: Colors.white,),
                      backgroundColor: Colors.grey,
                      
         ),),
            
            ListTile( 
              onTap: () {
                         setState(() {
                           
    
                        });
                        },
              leading: Icon(Icons.home,),
              title: Text('Home Page'), ), 
              ExpansionTile(
            title: Text("Booking"),
            leading: Icon(Icons.store),
          children: [ 
              ListTile( 
              onTap: () {
                         setState(() {
    Navigator.pushNamed(context, '/indiv');
                        });
                        },
              title: Text("  Individual" ),),
              ListTile( 
              onTap: () {
                         setState(() {
    Navigator.pushNamed(context, '/wocloth');
                        });
                        },
                        
              title: Text("  Room" ),),
          ],),
          ListTile( 
              onTap: () {
                         setState(() {
    Navigator.pushNamed(context, '/favourite');
                        });
                        },
                
              leading: Icon(Icons.discount),
              title: Text("Offers" ),),
              ListTile( 
              onTap: () {
                         setState(() {
                          Navigator.pushNamed(context, '/branch');
    
                        });
                        },
                
              leading: Icon(Icons.shop_2),
              title: Text("Branches" ),),
              Divider(),
              ListTile( 
              onTap: () {
                         setState(() {
                           Navigator.pushNamed(context, '/setting');
    
    
                        });
                        },
                
              leading: Icon(Icons.settings),
              title: Text("setting" ),),
              ListTile( 
              onTap: () {
                         setState(() {
                           Navigator.pushNamed(context, '/aboutus');
    
                        });
                        },
              leading: Icon(Icons.help),
              title: Text("about us" ),),
          ],),),
     appBar: AppBar(
       title: Text('Creativo Coworking',style:TextStyle(color: Color.fromARGB(255, 245, 244, 245), fontSize: 24,fontWeight: FontWeight.bold),),
       backgroundColor: Color.fromARGB(255, 245, 150, 220),
       actions: [
         IconButton(onPressed: (){}, icon: Icon(Icons.search),color: Colors.white,)
       ],),
       body: ListView(
         children: [
           image_carousel,
           Padding(padding: EdgeInsets.all(8),
           //child: Text("Store",style: TextStyle(fontWeight:FontWeight.bold,color: Color.fromARGB(255, 90, 90, 90),fontSize: 20),),
           ),
          Row( 
            children: [
              Expanded(child: 
              Container(child: InkWell(onTap: (){
                Navigator.pushNamed(context, '/aboutus');
              },
              child: Image.asset('11.jpg')),
                height: 200,
                ),
              ),
            Expanded
             (child:
              Container(child: InkWell(onTap: (){
                Navigator.pushNamed(context, '/favourite');
              },
                child: Image.asset('10.jpg')),height: 200)),
         ],
          ),
         Row(
            children:[
            Expanded(child: 
              Container(child: InkWell(onTap: (){
                Navigator.pushNamed(context, '/branch');
              },
              child: Image.asset('7.jpg')) ,height: 200,
              ),),
            Expanded(child: 
              Container(child: InkWell(onTap: (){
                Navigator.pushNamed(context, '/wocloth');
              },
              child: Image.asset('8.jpg')) ,height: 200,
              ),),

            ],
          ),
         
         ]
       ),
      
   );
  }

}
