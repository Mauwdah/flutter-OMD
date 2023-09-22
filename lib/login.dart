import 'package:flutter/material.dart';
import 'package:flutter_secondapp/main.dart';

class Mylogin extends StatefulWidget {
  const Mylogin({super.key});

  @override
  State<Mylogin> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Mylogin> {
  @override
  Widget build(BuildContext context) {
      TextEditingController name = TextEditingController();
      TextEditingController pass = TextEditingController();
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            height: 530,
            width: 370,
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),bottomRight: Radius.circular(10),
                topLeft: Radius.circular(10),topRight: Radius.circular(10),
              ),color: Color.fromARGB(255, 181, 205, 204),),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage('images/1.jpg'),
                    maxRadius: 80,
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  TextField(
                    decoration: InputDecoration(
                        hintText: 'OMD',
                        prefixIcon: Icon(
                          Icons.account_box,
                        ),
                        labelText: 'Username',
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20))),
                    controller: name,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextField(
                    decoration: InputDecoration(
                        hintText: '123',
                        prefixIcon: Icon(Icons.password),
                        labelText: 'Password',
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        )),
                    controller: pass,
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  MaterialButton(
                    elevation: 0.5,
                    color: Color.fromARGB(255, 54, 123, 120),
                    padding: EdgeInsets.symmetric(horizontal: 80, vertical: 20),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => const OMD()));
                    },
                    shape: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide.none),
                    child: Text(
                      "Login",
                      style: TextStyle(
                          color: Color.fromARGB(255, 181, 205, 204),
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      backgroundColor: Color.fromARGB(255, 54, 123, 120),
    );
  }
}
