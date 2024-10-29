import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp( debugShowCheckedModeBanner: false,
      home: Scaffold(
      appBar: AppBar( actions: [ Text("skip"),SizedBox(width: 10,)],),
        body:  
        Center(
          child: Container(width: double.infinity,
            
              child: Column( children:  [ ClipRRect( borderRadius: BorderRadius.circular(500),
              child: Image.asset("assets/image.png",
              height:300,
              width: 300,
              fit: BoxFit.cover,
              
                        ),),
                
                
                SizedBox(height:70,),
                Text("We Provide Professional Home services at a very friendly price",style: TextStyle( fontSize: 15,fontWeight: FontWeight.w700),)
                
                
              
              ],
              ),
            ),
          ),
          
          
        )
        
      ) ; 
    
}
}