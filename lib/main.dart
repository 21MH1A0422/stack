import 'package:flutter/material.dart';

import 'next.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: FirstScreen(),debugShowCheckedModeBanner: false,);
  }
}
class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Stack(children: [
Container(height: 400,width: 390,
  child: Card(color: Colors.deepPurpleAccent,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(60)),
    child: Center(child: CircleAvatar(radius: 100,backgroundColor: Colors.white30,
      child: CircleAvatar(radius: 90,backgroundColor: Colors.white60,
     child: CircleAvatar(radius: 80,backgroundColor: Colors.white70,
       child:CircleAvatar(radius: 70,backgroundColor: Colors.white,
      child: Column(
        children: [
          Text("YOUR SCORE",style: TextStyle(color: Colors.deepPurpleAccent.shade700,fontWeight: FontWeight.bold,fontSize: 20),),
          Text("150",style: TextStyle(color: Colors.deepPurpleAccent.shade700,fontWeight: FontWeight.bold,fontSize: 30),),
          TextButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>NewPage()));
          }, child: Text("Next Page",style: TextStyle(fontSize: 25),))
        ],
      ), ) ,
     ),
      ),
    ),
    ),
  ),
)
    ],),
    );
  }
}

