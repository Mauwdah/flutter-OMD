// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart'; //show AppBar, BuildContext, Color, Icon, IconButton, Icons, MaterialApp, Scaffold, StatelessWidget, Text, TextStyle, Widget, runApp;
import 'Mydrawer.dart';
import 'login.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Mylogin(),
    );
  }
}
class OMD extends StatelessWidget {
  const OMD({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
            floatingActionButton:
            FloatingActionButton(
              onPressed: (){},
              child: Icon(Icons.add),backgroundColor: Color.fromARGB(255, 54, 123, 120),) ,
      appBar: AppBar(
      title: Title(color: Colors.white, child: Text("OMD"),),
      backgroundColor: Color.fromARGB(255, 54, 123, 120),centerTitle: true,
      actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.search)),
          IconButton(onPressed: (){}, icon: Icon(Icons.message)),
          IconButton(onPressed: (){}, icon: Icon(Icons.share)),
        ],
        ),
      drawer: mydrawer(),
      body:
          ListView(children: [
            SizedBox(height: 180,),
            Container(child: 
            CircleAvatar(
              backgroundImage: AssetImage('images/1.jpg'),maxRadius: 100,),
            ),
            SizedBox(height: 20,),
            Center(child: Text("Welcome to OMD app Where you can find for each of your problems a Solution.",
            style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,),textAlign: TextAlign.center,)),
            ],),
          
            backgroundColor: Color.fromARGB(255, 181, 205, 204),
    );
  }
}