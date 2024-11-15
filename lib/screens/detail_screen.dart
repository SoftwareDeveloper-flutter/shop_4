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
                   const SizedBox(width:85),
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
             ),

          
              
        const Padding(
          
          padding: EdgeInsets.only(left:10.0),
            child: Align(
            alignment: Alignment.centerLeft,
          child:Text("Clean 90 Triple Sneakers")
            ),
          ),
               
                const Padding(
          
          padding: EdgeInsets.only(left:10.0),
            child: Align(
            alignment: Alignment.centerLeft,
            child:Row(
              children: [
               Icon(Icons.star,color:Colors.yellow),
               Icon(Icons.star,color:Colors.yellow),
               Icon(Icons.star,color:Colors.yellow),
               Icon(Icons.star,color:Colors.yellow),
               Icon(Icons.star,color:Colors.yellow),
               SizedBox(width:10.0),
               Text("(270 Review)",style:TextStyle(fontWeight:FontWeight.bold))
              ],
            ),

         
            ),
          ),
          const Padding(
            padding:EdgeInsets.only(top:10.0,left:10.0),
            child:Align(
               alignment: Alignment.centerLeft,
               child:Text("Size",style:TextStyle(fontSize:17,fontWeight:FontWeight.bold))
            ),
          ),

           Padding(
            padding:const EdgeInsets.only(top:10.0,left:10.0),
            child:Align(
               alignment: Alignment.centerLeft,
               child:Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
            const Text("Description",style:TextStyle(fontSize:17,fontWeight:FontWeight.bold)),
            const SizedBox(height:10),
            const Text("There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable.",style:TextStyle(fontSize:12,fontWeight:FontWeight.w100)),
            const SizedBox(height:30),
            Row(
              
              children: [
                const Column(
              
                  children: [
                         SizedBox(width:120),
           Text("Total Price",style:TextStyle(fontSize:10,fontWeight:FontWeight.w100)),
             Text("\$245.00",style:TextStyle(fontSize:17,fontWeight:FontWeight.w900))
                  ],
                ),
  
   const SizedBox(width:20),
    ElevatedButton(
      onPressed:(){},
      style:ElevatedButton.styleFrom(
        backgroundColor: Colors.black,
        foregroundColor:Colors.white,
         minimumSize: const Size(150, 50),
      ),

      child: const Text("Add to cart"),
    ),
             
              ]
            ),
        
        
                ])
               
            ),
          ),
              
             ],
             
             ),
             
      

    );
  }
}

