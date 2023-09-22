import 'package:flutter/material.dart'; // AssetImage, BuildContext, CircleAvatar, Color, Column, Container, CrossAxisAlignment, Drawer, DrawerHeader, Icon, Icons, Image, ListTile, Row, StatelessWidget, Text, UserAccountsDrawerHeader, Widget;
import 'package:flutter_secondapp/main.dart';
import 'player.dart';
import 'package:flutter_secondapp/quiz.dart';
import 'login.dart';
import 'calculate.dart';
class mydrawer extends StatelessWidget {
  const mydrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            color: Color.fromARGB(255, 54, 123, 120),
            width: double.infinity,
            height: 250,
            padding: EdgeInsets.only(top: 20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage('images/2.jpg'),
                  maxRadius: 60,
                ),
                Text(
                  "OMD",
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
                Text(
                  "mauda422988@gmail.com",
                  style: TextStyle(
                      color: Color.fromARGB(255, 50, 50, 50), fontSize: 14),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 15),
            child: Column(
              children: [
                ListTile(
                  title: Text("Homepage"),
                  leading: Icon(Icons.home,
                      color: Color.fromARGB(255, 54, 123, 120)),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => OMD()));
                  },
                ),
                ListTile(
                  title: Text("Calculator"),
                  leading: Icon(
                    Icons.calculate,
                    color: Color.fromARGB(255, 54, 123, 120),
                  ),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const mycalculate()));
                  },
                ),
                ListTile(
                  title: Text("The quiz"),
                  leading: Icon(Icons.quiz,
                      color: Color.fromARGB(255, 54, 123, 120)),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => myquiz()));
                  },
                ),
                ListTile(
                  title: Text("player"),
                  leading: Icon(Icons.play_circle,
                      color: Color.fromARGB(255, 54, 123, 120)),
                  onTap: () {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (context) => myplayer() ));
                  },
                ),
                ListTile(
                  title: Text("Logout"),
                  leading: Icon(Icons.logout,
                      color: Color.fromARGB(255, 54, 123, 120)),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Mylogin()));
                  },
                ),
              ],
            ),
          )
        ],
      ),
      backgroundColor: Color.fromARGB(255, 181, 205, 204),
    );
  }
}
