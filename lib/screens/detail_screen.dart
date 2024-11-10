import 'package:flutter/material.dart';
class DetailScreen extends StatefulWidget{
  const DetailScreen({super.key});
 @override
  State<StatefulWidget>createState(){
      return DetailScreenState();
  }
}

class DetailScreenState extends State<DetailScreen>{
  @override
  Widget build(BuildContext context){
    return  Scaffold(
         appBar: AppBar(
          title:const Text("Product Details")
         ),
    );
  }
}