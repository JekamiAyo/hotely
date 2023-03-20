import 'package:flutter/material.dart';
class MorePage extends StatelessWidget {
  const MorePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1b2323),
      body: Center(child: Text("COMING SOON", style: TextStyle(color: Colors.white, fontSize: 30),)),
    );
  }
}