import 'dart:ui';

import 'package:flutter/material.dart';

class HotelDetails extends StatelessWidget {
  final String imagePath;
  final String distance;
  final String price;
  HotelDetails({required this.imagePath, required this.distance, required this.price});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Column(
          children: [
            Container(
              height: 300,
              decoration: BoxDecoration(
                  image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(imagePath),
                colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(0.5), BlendMode.darken),
              )),
            ),
          ],
        ),
        Positioned(
          left: 10,
          top: 10,
          child: GestureDetector(
            onTap: () => Navigator.pop(context),
            child: ClipRRect(
              //to restrict the blur to just this container
              borderRadius: BorderRadius.circular(12),
              child: Container(
                height: 50,
                width: 50,
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 1, sigmaY: 1),
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
                            ])),
                    child: Icon(
                      Icons.arrow_back_ios_new_rounded,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        Positioned(
          right: 10,
          top: 220,
          child: ClipRRect(
            //to restrict the blur to just this container
            borderRadius: BorderRadius.circular(12),
            child: Container(
              height: 50,
              width: 130,
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: Colors.transparent),
                      gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            Colors.white.withOpacity(0.2),
                            Colors.white.withOpacity(0.1)
                          ])),
                  child: Center(
                      child: Text(
                    '$distance km/h',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  )),
                ),
              ),
            ),
          ),
        ),
        Positioned(
          top: 280,
          child: Container(
            height: 500,
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            decoration: const BoxDecoration(
                color: Color(0xff1b2323),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30))),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: const [
                  Text(
                  "Top rated",
                  style: TextStyle(
                    color: Color(0xff5e7b8a),
                  ),
                ),
                Text(
                  "Sapphires Hotel",
                  style: TextStyle(color: Colors.white, fontSize: 27),
                ),
               SizedBox(
                  height: 20,
                ),
                 Text(
                  "Contrary to belief, Lorem ipsum is not simply random text. it has roots in a piece of classical Latin literature",
                  style: TextStyle(color: Color(0xFFb9bbbb), fontSize: 13),
                ),
                ],),

                //  const SizedBox(
                //   height: 40,
                // ),
                Row(
                  children:  [
                    HotelRentWidget(
                      price: price,
                    ),
                  ],
                ),
                //   const SizedBox(
                //   height: 40,
                // ),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 20),
                  height: 45,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
                  child: TextButton(
                      style: TextButton.styleFrom(
                          backgroundColor: const Color(0xFF96C4E1),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20))),
                      onPressed: () {},
                      child: const Text(
                        'Book Now',
                        style: TextStyle(color: Colors.black, fontSize: 20),
                      )),
                ),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}

class HotelRentWidget extends StatelessWidget {
  const HotelRentWidget({ required this.price}) ;
final String price;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:  BoxDecoration(
        border: Border.all(color: Color(0xFFb9bbbb)),
        borderRadius: BorderRadius.circular(20)
      ),
      height: 100,
      width: 100,
      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 13),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("Hotel Rent", style: TextStyle(color: Colors.white),),
          Row(
            children: [
              Text("\$$price", style: TextStyle(color: Colors.white, fontSize: 20),),
              SizedBox(width: 13,),
              Expanded(child: Text("Per night", style: TextStyle(color: Color(0xFFb9bbbb) ,fontSize: 12),))
            ],
          )
        ],
      ),
    );
  }
}
