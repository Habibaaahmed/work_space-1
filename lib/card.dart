
import 'package:flutter/material.dart';
import 'package:flutter_application_6/detail.dart';
import 'package:flutter_application_6/wocloth.dart';

import 'favourite.dart';

class cardcloth extends StatefulWidget {   
   String imagepho;
   String name;
   String price;
   String descrip;
  bool isselec =false;
  bool isselec2 =false;
  
   cardcloth({required this.imagepho,required this.name,required this.price,required this.descrip,});

  @override
  State<cardcloth> createState() => _cardclothState();
}

class _cardclothState extends State<cardcloth> {
  
  
   @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){Navigator.push(context, MaterialPageRoute(builder: ((context) => detail(imagepho: '${widget.imagepho}', name: '${widget.name}', price: '${widget.price}', descrip: '${widget.descrip}',isselec: widget.isselec,))));},
      child:
     Card(
      elevation: 3.0,
  shape: RoundedRectangleBorder(
  borderRadius: BorderRadius.circular(30),),
  color: Colors.white,
  child: Padding(
  padding: EdgeInsets.all(10),
  child: Row(
  children: [
  Expanded(
  flex: 1,
  child: Stack (
    children: [
      Image.asset('${widget.imagepho}'),
      Positioned(
                bottom: 5,
                right: 5,
                child:
                 IconButton( 
                  onPressed:
         (){
                  setState(() {
                  widget.isselec? {
                  widget.isselec=false 
                  
                  
                  }:{widget.isselec =true};});
                },
                 icon: Icon( Icons.favorite_sharp, color: 
                 widget.isselec?(Colors.red):(widget.isselec2? Colors.red:Colors.grey)
                 ,size: 60,),),),],),),

 Expanded(
  flex: 1,
  child: Column(
  children: [Text('${widget.name}'), Text('${widget.price}\$')],
  ),)
 ]))));


    
  }
}
