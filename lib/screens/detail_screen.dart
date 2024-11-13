import 'package:flutter/material.dart';
class DetailScreen extends StatefulWidget{
  const DetailScreen({super.key});
  
 @override
  State<StatefulWidget>createState(){
      return DetailScreenState();
  }
}

class DetailScreenState extends State<DetailScreen>{
   int counterQty=1;


  void _addQty(){
   setState((){
      counterQty++;
   });
  }

  void _removeQty(){
   setState((){
    if(counterQty > 1){
      counterQty--;
    }
   });
  }

  @override
  Widget build(BuildContext context){
    return  Scaffold(
         appBar: AppBar(
      
         ),
         body: Column(
             children: [
              
              Image.asset('assets/images/shoe.jpg'),
              Padding(
              padding:const EdgeInsets.only(left:10.0,top:10.0),
              child:Row(
                children: [
                  const Text("Axel Arigoto",style:TextStyle(fontSize:17,fontWeight:FontWeight.w900)),
                   const SizedBox(width:50),
                  Container(
          width:120,height:30,
          decoration:BoxDecoration(
              color:const Color.fromARGB(255, 201, 188, 188),
              borderRadius: BorderRadius.circular(10.0),
          ),
        
          child:  Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              IconButton( 
                icon:const Icon(Icons.add),
                onPressed: _addQty,
                 padding: EdgeInsets.zero,
                ),
              
               Text("$counterQty"),
                IconButton(
                  icon: const Icon(Icons.remove),
                  onPressed: _removeQty,
                   padding: EdgeInsets.zero,
                  )

            ],
          ),
  ),
                ],
              ),
             )
          
              

               
              
              
             ],
             
             ),
             
      

    );
  }
}

