
import 'package:flutter/material.dart';
import 'package:flutter_application_6/card.dart';



class detail extends StatefulWidget {
  String imagepho;
   String name;
   String price;
   String descrip;
   bool isselec;
   detail({required this.imagepho,required this.name,required this.price,required this.descrip,required this.isselec});

  @override
  State<detail> createState() => _detailState();
}

class _detailState extends State<detail> {
  
  @override
  Widget build(BuildContext context) {
   
  return Scaffold(
    appBar: AppBar(title: Text('${widget.name}'
    ),
    backgroundColor: Colors.amber,
    ),
    body:
  ListView(
    children: [Center(
      child:
      Container(height: 500,
        child:
     Stack (
    children: [
        
      Image.asset('${widget.imagepho}'),
       Positioned(
                top: 5,
                right: 5,
                child:Padding(padding: EdgeInsets.all(8),
           child: Text('${widget.price}\$',style: TextStyle(fontWeight:FontWeight.bold,color: Color.fromARGB(255, 8, 8, 8),fontSize: 40),
           ),),),
      Positioned(
               bottom: 5,
                right: 5,
                child: IconButton(onPressed: (){ 
                setState(() {
                  widget.isselec? (widget.isselec=false)   :   (widget.isselec=true) ;       
                    });
                },
                 icon: Icon( Icons.favorite_sharp, color: widget.isselec?(Colors.red):(Colors.grey),size: 60,),),),
                 
                 ],),),),

     
      

      
         Divider(),
          Padding(padding: EdgeInsets.all(8),
           child: Text('Description:',style: TextStyle(fontWeight:FontWeight.bold,color: Color.fromARGB(255, 90, 90, 90),fontSize: 20),),),
         
          Padding(padding: EdgeInsets.all(8),
           child: Text('${widget.descrip}',//style: TextStyle(fontWeight:FontWeight.bold,color: Color.fromARGB(255, 90, 90, 90),fontSize: 20),
           ),),
         

      
    ],

  ));
  }
}
