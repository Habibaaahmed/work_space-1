import 'package:flutter/material.dart';

import 'homescreen.dart';

class signup extends StatefulWidget {  @override
  State<signup> createState() => _signupState();
}

class _signupState extends State<signup> {
  bool isPass = true;
  String printthis ='';
  final fieldText1 = TextEditingController();
  final fieldText2 = TextEditingController();
    @override
  Widget build(BuildContext context) {
       double screenHight = MediaQuery.of(context).size.height;
  double screenWidth = MediaQuery.of(context).size.width;
   return Scaffold(
     
      body:   
      SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child:
      Container( 
        color: Color.fromARGB(255, 245, 150, 220),
        width: screenWidth,
        height: screenHight,
        child:
     Column(
        children: [
            //-----------------------------------------------------------
      Expanded( 
        flex: 2,
        child: 
        Container( 
            alignment: Alignment.bottomLeft,
            padding: EdgeInsets.all(20),
          child:
         Column( 
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('signup',style: TextStyle(color: Colors.white,fontSize: 32,fontWeight: FontWeight.bold),),  
          ],
        ),
        ),
      ),
        //-----------------------------------------------------------
         Expanded( flex: 4,
        child: 
        //-----------------------------------------------------------
         Container(
    decoration: BoxDecoration(
      color: Color.fromARGB(255, 238, 212, 230),
     
          borderRadius: const BorderRadius.only(topLeft: Radius.circular(40.0),topRight: Radius.circular(40.0),),
        
    ),
      //-----------------------------------------------------------
      child:
      //-----------------------------------------------------------
    Padding(  
            padding: EdgeInsets.all(35),  
       //-----------------------------------------------------------
    child:  
      //-----------------------------------------------------------
    Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
          //----------------------------------------------------------- 
        Center(child:
         Text('${printthis}' ,style:TextStyle(color: Color.fromARGB(255, 245, 150, 220) ,fontWeight: FontWeight.bold) ,),),
          //-----------------------------------------------------------
        TextField(
          keyboardType: TextInputType.name,
          controller: fieldText1,
          decoration: InputDecoration(
            fillColor: Color.fromARGB(255, 246, 247, 235),
            filled: true,
            hintText: "Enter Your Name",
            labelText:'UserName',
            labelStyle: TextStyle(
              fontSize: 25,
              color: Colors.black,
              fontWeight: FontWeight.w500,
            ),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(18)),
            suffixIcon: Icon(Icons.person,color: Colors.grey,),
             ),
          maxLength: 10,
        ),
          //-----------------------------------------------------------
         TextField(
           keyboardType: TextInputType.visiblePassword,
           
          decoration: InputDecoration(
            fillColor: Color.fromARGB(255, 246, 247, 235),
            filled: true,
            hintText: "Enter Your password",
            labelText: 'Password',
            labelStyle: TextStyle(
              color: Colors.black,
              fontSize: 25,
              fontWeight: FontWeight.w500,
            ),
               border: OutlineInputBorder(borderRadius: BorderRadius.circular(18)),
             suffixIcon: IconButton(onPressed: (){setState(() {
               isPass?( isPass=false):( isPass=true);
             });}, icon:Icon(Icons.lock_outline),color: Colors.grey,),
            ),
            maxLength: 10,
           obscureText: isPass,
           controller: fieldText2,
         ),
          TextButton(onPressed: (){
              setState(() { fieldText2.clear(); });}, 
            child:Align(
              alignment: Alignment.centerRight,
              child: Text('Reset Password',style: TextStyle(color:Color.fromARGB(255, 245, 150, 220),fontWeight: FontWeight.bold,fontSize:17),),),),
            
         Row(
           mainAxisAlignment: MainAxisAlignment.center,
           crossAxisAlignment: CrossAxisAlignment.center,
           children: [
             Text('already a member?'),
             TextButton(onPressed: (){
               Navigator.pushNamed(context, '/login');
             }, child: Text('login',style: TextStyle(color:Color.fromARGB(255, 245, 150, 220),fontWeight: FontWeight.bold,fontSize:17),),),
            
           ],),
           Center(child:
           ElevatedButton(onPressed: (){
             setState(() {
               
             
             if(fieldText1.text.isNotEmpty && fieldText2.text.isNotEmpty)
             {Navigator.pushReplacement(context, MaterialPageRoute(builder: ((context) => HomeScreen(name:fieldText1.text))));}
               else if(fieldText1.text.isNotEmpty && fieldText2.text.isEmpty){
               printthis='please write your password';}
               else if(fieldText1.text.isEmpty && fieldText2.text.isNotEmpty){
               printthis='please write your name';}
               else if(fieldText1.text.isEmpty && fieldText2.text.isEmpty){
               printthis='please write your name & password';}
               });
              }, child: Text('SignUp' ,style: TextStyle(fontSize: 24),), 
              style: ElevatedButton.styleFrom(
                primary:  Color.fromARGB(255, 245, 150, 220),
                padding: EdgeInsets.only(right: 30,left: 30,top: 15,bottom: 15),
                onPrimary: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),),),),
   )]))))]))));
  }
}