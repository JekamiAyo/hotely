import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:hotely/views/home_screen.dart';
import 'package:hotely/views/more_screen.dart';
import 'package:hotely/views/nearMe_screen.dart';
import 'package:hotely/views/settings.dart';
class NavigatorPage extends StatefulWidget {
   NavigatorPage({super.key});

  @override
  State<NavigatorPage> createState() => _NavigatorPageState();
}

class _NavigatorPageState extends State<NavigatorPage> {
    var pages = [
      HomeScreen(),
      MorePage(),
      NearMe(),
      SettingsPage(),
    ];

    int first = 0;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      // extendBodyBehindAppBar: true,
      backgroundColor: Color(0xFF96C4E1),
      bottomNavigationBar: CurvedNavigationBar(
        height: 65,
        color: Color(0xff1b2323),
        backgroundColor: Color(0xFF96C4E1),
        index: first,
        animationDuration: Duration(milliseconds: 300),
        onTap: (value) {
         setState(() {
           first = value;
         });
        },
        items: [
        Icon(Icons.home, color: Color(0xFFd6d9d9),), 
        Icon(Icons.menu_rounded, color: Color(0xFFd6d9d9),), 
        Icon(Icons.navigation_outlined, color: Color(0xFFd6d9d9),), 
        Icon(Icons.settings, color: Color(0xFFd6d9d9),), 
      ]),
      body: SafeArea(child: pages[first]),
    );
  }
}