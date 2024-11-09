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

class HomeScreen extends StatefulWidget{
  const HomeScreen({super.key});

  @override
  State<StatefulWidget> createState(){
     return HomeScreenState();
  }
}

class HomeScreenState extends State<HomeScreen>{ 
   int currentIndexValue=0;
  
 
   @override
   Widget build(BuildContext context){
    return  Scaffold(
       appBar:AppBar(
      
       leading: 
        
          IconButton(onPressed:(){},
        icon:Container(
          padding:const EdgeInsets.all(8.0),
          
          decoration:const BoxDecoration(
               color:Colors.black,
               shape:BoxShape.circle,
              

          ),
           child:Image.asset('assets/images/menu_icon.png',color:Colors.white)),
        ),
      actions: const [
        Padding(padding: EdgeInsets.only(right:30.0),
        child: Icon(Icons.search,size: 30.0,)
        ),
       
      ],
        ),
        body:Padding(
          padding:const EdgeInsets.only(top: 15.0),
        child:SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child:Row(
          children:[
             const SizedBox(width:20),
            customContainer(200.0, 170.0,50),
            const SizedBox(width:30),
            customContainer(200.0, 170.0,70),
          ],
        ),),),
      bottomNavigationBar:BottomNavigationBar(
     
         currentIndex: currentIndexValue,
         onTap:(index) {
          setState(() {
            currentIndexValue = index;
          });
        },
         type: BottomNavigationBarType.shifting, 
          unselectedItemColor: const Color.fromARGB(255, 0, 0, 0), 
          selectedItemColor: Colors.black,
         items:const[
         
          BottomNavigationBarItem(icon: Icon(Icons.home,color:Colors.black),
          label:"Home"),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart,color:Colors.black),label:"Cart"),
          BottomNavigationBarItem(icon: Icon(Icons.notifications,color:Colors.black),label:"Notifications"),
          BottomNavigationBarItem(icon: Icon(Icons.person,color:Colors.black),label:"Profile"),
     
            
        ],
      ),
    );
   }
}
Widget customContainer(double w,double h,int percent){
  return Container(
    width: w,
    height:h,
    decoration: BoxDecoration(
      color:const Color(0xFFDADADA),
      borderRadius:BorderRadius.circular(20.0)
    ),
    
    child:Padding( 
      padding:const EdgeInsets.all(15.0),
    child:Row(
      crossAxisAlignment: CrossAxisAlignment.start,
       
      children: [
        //  Image.asset('assets/images/shop.jpg',width: 60),
         Column(
          children: [
        Text("$percent% Off",style:const TextStyle(fontWeight:FontWeight.bold,fontSize:25)),
        const SizedBox(width:10),
        const Text('On everything today',style: TextStyle(fontSize:16)),
        const SizedBox(height:10),
        const Text('With Code:FSCREATION',style:TextStyle(color:Colors.grey,fontSize:12),),
       
         Padding(
          padding:const EdgeInsets.only(top:5.0,bottom: 1.0),
          child:ElevatedButton(
          onPressed: (){},
          style:ElevatedButton.styleFrom(
              backgroundColor:Colors.black,
             foregroundColor: Colors.white

          ),
          child:const Text("Get Now")
        ),),
      ],)
       
      ],
     
    ),
    
    ),
   
        
  );
}