import 'package:flutter/material.dart';
import 'package:flutter_application_6/homescreen.dart';

   class Login extends StatefulWidget {
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
bool isPass = true;
  final fieldText1 = TextEditingController();
  final fieldText2 = TextEditingController();
  String printthis ='';
  final List names = <String>['Habiba','Ahmed','Alaa','Malak','Yazan','Rania ro','Manal','Ramy','Nada dodoo','Mohamed'];
  final List pass = <String>['12345678','01245689','3000756','233668562','a13@hj3','12345pop11','12!mn2356','00000','1111111111','19'];
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
            Text('Login',style: TextStyle(color: Colors.white,fontSize: 32,fontWeight: FontWeight.bold),),  
            Text('Welcome To Creativo Coworking Space',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w500),),
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
            fillColor:  Color.fromARGB(255, 246, 247, 235),
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
           //-----------------------------------------------------------
            TextButton(onPressed: (){
              setState(() { fieldText2.clear(); });}, 
            child:Align(
              alignment: Alignment.centerRight,
              child: Text('Reset Password',style: TextStyle(color:Color.fromARGB(255, 245, 150, 220),fontWeight: FontWeight.bold,fontSize:17),),),),
            //-----------------------------------------------------------
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                  //-----------------------------------------------------------
              ElevatedButton(onPressed: (){
                setState(() {
                  Navigator.pushReplacementNamed(context,'/signup');
                
                });

              }, child: Text('SignUp' ,style: TextStyle(fontSize: 24),), 
              style: ElevatedButton.styleFrom(
                primary:  Color.fromARGB(255, 245, 150, 220),
                padding: EdgeInsets.only(right: 30,left: 30,top: 15,bottom: 15),
                onPrimary: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),),),),
                //-----------------------------------------------------------
              ElevatedButton(onPressed: (){ 
                setState(() {
                  for(var i=0;i<10;i++){if(fieldText1.text != names[i] && fieldText2.text!=pass[i]){printthis='Invalid Username and Password';}}
                  for(var i=0;i<10;i++){
                  if(fieldText1.text == names[i] && fieldText2.text==pass[i]){printthis='Login Successfully';
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: ((context) => HomeScreen(name:fieldText1.text))));}
                  else if(fieldText1.text == names[i] && fieldText2.text!=pass[i]){printthis='Invalid Password';}
                  else if(fieldText1.text != names[i] && fieldText2.text==pass[i]){printthis='Invalid Username';}}});},
                   child: Text('Login' ,style: TextStyle(fontSize: 24),), 
                   style: ElevatedButton.styleFrom(
                   primary:  Color.fromARGB(255, 245, 150, 220),
                   padding: EdgeInsets.only(right: 30,left: 30,top: 15,bottom: 15),
                   onPrimary: Colors.white,
                   shape: RoundedRectangleBorder(
                   borderRadius: BorderRadius.circular(30)
                   ,),),),],),],),),)),],),)),);}}