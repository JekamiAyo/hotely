import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:hotely/views/hotelDetail_screen.dart';

class myCard extends StatelessWidget {
  final String imagePath;
  final String distance;
  final String price;
  const myCard({
    Key? key, required this.imagePath, required this.distance, required this.price,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15),
      child: Stack(
        children: 
          [Container(
            height: 250,
            width: 230,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
                image:  DecorationImage(
                  fit: BoxFit.cover,
                    image: AssetImage(
                        imagePath))),
          ),
          Positioned(
            left: 150,
            top: 20,
            child: GestureDetector(
              onTap: () => Navigator.push(context, MaterialPageRoute(builder: ((context) {
                return HotelDetails(imagePath: imagePath, distance: distance, price: price,);
              }))),
              child: ClipRRect(//to restrict the blur to just this container
                borderRadius: BorderRadius.circular(12),
                child: Container(
                  height: 50,
                  width: 50,
                  child: BackdropFilter(filter: ImageFilter.blur(sigmaX: 1, sigmaY: 1),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: Colors.white.withOpacity(0)),
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                        Colors.white.withOpacity(0.4),
                        Colors.white.withOpacity(0.1)
                      ])
                    ),
                  child: Icon(Icons.arrow_forward_ios_rounded, color: Colors.white,),
                  ) ,),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}