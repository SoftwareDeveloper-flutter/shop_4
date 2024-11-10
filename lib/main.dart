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
        body:SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
          padding:const EdgeInsets.only(top: 15.0),
          child:Column(
            crossAxisAlignment: CrossAxisAlignment.start, 
            children:[
              SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child:Row(
              children:[
                const SizedBox(width:20),
                customContainerWithImg(200.0, 170.0,50),
                const SizedBox(width:10),
                customContainerWithImg(200.0, 170.0,70),
              
              ],
              ),
              ),
              const SizedBox(height:20),
              const Row(
                children: [
                       Padding(
                        padding:EdgeInsets.only(left:20.0),
                      child: Text("New Arrivals",style:TextStyle(fontSize:22,fontWeight:FontWeight.w900)),
                      ),
                       Padding(
                        padding:EdgeInsets.only(left:100.0),
                      child: Text("View All",style:TextStyle(fontSize:16,fontWeight:FontWeight.w300)),
                      ),
             ] ),
            
               const SizedBox(height:10),
                 Padding(
                padding:const EdgeInsets.only(left:20.0),
               child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child:Row(
              children:[
                const SizedBox(width:20),
                customContainer(190.0, 200.0,50),
                const SizedBox(width:10),
                customContainer(190.0, 200.0,70),
              
              ],
              ),
              ),
              ),
                const SizedBox(height:20),
              const Row(
                children: [
                       Padding(
                        padding:EdgeInsets.only(left:20.0),
                      child: Text("Popular",style:TextStyle(fontSize:22,fontWeight:FontWeight.w900)),
                      ),
                       Padding(
                        padding:EdgeInsets.only(left:150.0),
                      child: Text("View All",style:TextStyle(fontSize:16,fontWeight:FontWeight.w300)),
                      ),
             ] ),
            
               const SizedBox(height:10),
                 Padding(
                padding:const EdgeInsets.only(left:20.0),
               child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child:Row(
              children:[
                const SizedBox(width:20),
                customContainerPopular(300.0, 90.0,50),
                const SizedBox(width:10),
                customContainerPopular(300.0, 90.0,70),
              
              ],
              ),
              ),
              ),
            ],
          ),
          ),
        ),
      
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
    border: Border.all(width: 3.0,color:Colors.black),
      borderRadius:BorderRadius.circular(20.0)
    ),
    
    child:Padding( 
      padding:const EdgeInsets.all(7.0),
      child:Column(
        children: [
           Row(
      crossAxisAlignment: CrossAxisAlignment.start,
       
      children: [
        //  Image.asset('assets/images/shop.jpg',width: 60),
         Column(
          children: [
             Padding(
              padding:const EdgeInsets.only(left:120.0),
              child:Container(
                width: 30.0,
                height:30.0,
                decoration:  BoxDecoration(
                 color:Colors.black,
                 borderRadius: BorderRadius.circular(20.0),
                ),
                  child:const Icon(Icons.favorite_border_outlined,color:Colors.white),
              ),
            
            
         ),
            Padding(
          padding:const EdgeInsets.only(top:5.0,left:10.0),
      child: ClipRRect(
           borderRadius: BorderRadius.circular(8.0),
          child:Image.asset('assets/images/shoe.jpg',height:90)
       ),
            ),
       
        
      ],),
     
       
      ],
     
    ),
    const Padding(
      padding:EdgeInsets.only(top:1.0,left:5.0),
      child:Column(
         children: [
          Text("The Marc Jacobs",style:TextStyle(fontSize:14,fontWeight:FontWeight.w900)),
         Text("Traveler Tote",style:TextStyle(fontSize:12,fontWeight:FontWeight.w900)),
          Text("\$195.0.0",style:TextStyle(fontSize:12,fontWeight:FontWeight.w900)),
         ],
    ),
    ),
        ],

      ),

    ),
    
        
  );
  
}


Widget customContainerWithImg(double w,double h,int percent){
  return Container(
    width: w,
    height:h,
    decoration: BoxDecoration(
      color:const Color(0xFFDADADA),
      borderRadius:BorderRadius.circular(20.0),
         image: const DecorationImage(
              image: AssetImage('assets/images/shop.jpg'),
              fit: BoxFit.cover,
            ),
    ),
    
    child:Padding( 
      padding:const EdgeInsets.all(15.0),
    child:Row(
      crossAxisAlignment: CrossAxisAlignment.start,
       
      children: [
        //  Image.asset('assets/images/shop.jpg',width: 60),
         Column(
          children: [
        Text("$percent% Off",style:const TextStyle(fontWeight:FontWeight.w900,fontSize:25)),
        const SizedBox(width:10),
        const Text('On everything today',style: TextStyle(fontSize:16)),
        const SizedBox(height:10),
        const Text('With Code:FSCREATION',style:TextStyle(color:Colors.white,fontSize:12),),
       
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






Widget customContainerPopular(double w,double h,int percent){
  return Container(
    width: w,
    height:h,
    decoration: BoxDecoration(
      color:const Color(0xFFDADADA),
      borderRadius:BorderRadius.circular(20.0),
    ),
    
    child:Padding( 
      padding:const EdgeInsets.all(15.0),
    child:Row(
      crossAxisAlignment: CrossAxisAlignment.start,
       
      children: [
    
         Column(
          children: [
                  ClipRRect(
        borderRadius: BorderRadius.circular(8.0),
        child: Image.asset(
          'assets/images/shoe.jpg',
          width: 90,
        ),
      )
          
        ],
      ),
          const Padding(
              padding:EdgeInsets.only(left:10.0),
        child:Column(
        children:[
          Text("Gia Borghini",style:TextStyle(color:Colors.black,fontSize:13,fontWeight:FontWeight.w900)),
          Text("RHW Rose 1 Sandals",style:TextStyle(color:Color.fromARGB(255, 133, 133, 133),fontSize:10,fontWeight:FontWeight.w900)),
          Row(
            children: [
            Icon(
                Icons.star,
                color: Colors.amber,
                size: 20.0,
              ),
              SizedBox(width:10),
              Text("(4.5)",style:TextStyle(fontSize:12,fontWeight:FontWeight.w900))
            ],
          ),
          
        
        ],
        ),
       ),

        const Padding(
              padding:EdgeInsets.only(left:10.0),
        child:Column(
        children:[
          SizedBox(height:15),
          Text("\$740",style:TextStyle(color:Colors.black,fontSize:20,fontWeight:FontWeight.w900)),
        ],
        ),
       ),
      ],
     
    ),
    
    ),
   
        
  );
}