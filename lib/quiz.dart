import 'package:flutter/material.dart';
import 'Mydrawer.dart';
class myquiz extends StatefulWidget {
  const myquiz ({super.key});

  @override
  State<myquiz> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<myquiz> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body:Text("quiz"),
        backgroundColor: Color.fromARGB(255, 181, 205, 204),
    );
  }
}