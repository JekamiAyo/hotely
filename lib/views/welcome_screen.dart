import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:hotely/views/home_screen.dart';
import 'package:hotely/views/navigator.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/falli.jpg'),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.5), BlendMode.darken),// to darken background image
            // colorFilter: ColorFilter.mode(Colors.black.withOpacity(1), BlendMode.dstATop)//to add a transparent feature
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(50.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const SizedBox(
                  height: 130,
                ),
                const Text(
                  'Find Your Favorite Hotel To Stay',
                  style: TextStyle(color: Colors.white, fontSize: 50),
                ),
                const SizedBox(height: 40),
                const Expanded(
                  child: Text(
                    'Find your hotel easily and travel anywhere you want with us',
                    style: TextStyle(color: Colors.white, fontSize: 22),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 20),
                  height: 45,
                  decoration: BoxDecoration(boxShadow: const [
                    BoxShadow(
                        color: Color(0xFF96C4E1),
                        blurRadius: 4,
                        spreadRadius: 1.5)
                  ], borderRadius: BorderRadius.circular(20)),
                  child: TextButton(
                      style: TextButton.styleFrom(
                          backgroundColor: const Color(0xFF96C4E1),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20))),
                      onPressed: () {},
                      child: const Text(
                        'Sign Up',
                        style: TextStyle(color: Colors.black, fontSize: 20),
                      )),
                ),
                Center(
                  child: RichText(
                      text: TextSpan(text: "Already have an account? ", children: [
                    TextSpan(
                        text: 'Log in',
                        style: const TextStyle(color: Color(0xFF96C4E1),fontSize: 15),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.push(context, MaterialPageRoute(
                                builder: (BuildContext context) {
                              return  NavigatorPage();
                            }));
                          }),
                  ])),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
