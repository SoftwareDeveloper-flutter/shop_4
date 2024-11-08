import 'package:flutter/material.dart';


void main(){
 runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});
  @override
  Widget build(BuildContext context){
    return const MaterialApp(
      debugShowCheckedModeBanner:false,
       title:"Shop4",
       home:HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget{
   const HomeScreen({super.key});
   @override
   Widget build(BuildContext context){
    return  Scaffold(
       appBar:AppBar(
       leading: IconButton(onPressed: null,
        icon:Container(
          padding:const EdgeInsets.all(8.0),
          decoration:const BoxDecoration(
               color:Colors.black,
               shape:BoxShape.circle,
          ),
           child:Image.asset('assets/images/menu_icon.png',color:Colors.white)),
        ),
      
        ),

    );
   }
}