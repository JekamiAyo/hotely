import 'package:flutter/material.dart';
import 'package:hotely/models/hotel_model.dart';
import 'package:hotely/widgets/cards.dart';

import '../widgets/myTabBar.dart';
import '../widgets/searchBar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>{
  List<Hotel> hotels = [
    Hotel(image: 'assets/2017-8-30-moonhoon-simple-house-16-edited (1).jpg', distance: '20', price: '50'),
    Hotel(image: 'assets/falli.jpg', distance: '20', price: '42'),
    Hotel(image: 'assets/photo-1477075543404-9d0a72bbccbe.jpeg', distance: '40', price: '44'),
    Hotel(image: 'assets/Planchonella-House-Edge-Hill-Cairns-QLD-F2.jpg', distance: '30', price: '50'),
    Hotel(image: 'assets/Zaha-Hadid-building-Jockey-Club-Innovation-Tower-May-2014.jpg', distance: '20', price: '60'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1b2323),
      appBar: AppBar(
        backgroundColor: const Color(0xff1b2323),
        leading: Container(padding: const EdgeInsets.all(8) ,child: const Icon(Icons.more_horiz_rounded)),
        actions: [Container(padding: const EdgeInsets.all(8) ,child: const Icon(Icons.notifications_none_outlined))],
        elevation: 0.0,
      ),
      body: Column(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    SizedBox(height: 27,),
                     Text("Hi Alex, Let's", style: TextStyle(color: Colors.white, fontSize: 27),),
                     Text("Find your Favourite Hotel", style: TextStyle(color: Color(0xFFb9bbbb), fontSize: 27),),
                     SizedBox(height: 30,),
                     SearchBar(),
                     SizedBox(height: 30,),
                  ],
                ),
              ),
              tab(),
              SizedBox(height: 20,),
               Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                     const SizedBox(height: 30,),
                    const Text("Top rated", style: TextStyle(color: Color(0xff5e7b8a),),), 
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const[
                        Text("Sapphires Hotel", style: TextStyle(color: Colors.white, fontSize: 27),),
                        Text("See more", style: TextStyle(color: Color(0xff5e7b8a),),),
                      ],
                    ),
                    const SizedBox(height: 30,),
                  ],
                ),
              ),
            ],
          ),
          Expanded(
            child: ListView.builder(
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: hotels.length,
              itemBuilder: ((context, index) {
              return myCard(imagePath: hotels[index].image, distance: hotels[index].distance, price: hotels[index].price,);
            })),
          )
        ],
      ),
    );
  }
}

class tab extends StatelessWidget {
  const tab({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 45,
        child: ListView(
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          children: [
            MyTabBar(color: Color(0xFF96C4E1), text: "Top Rates", bordercolor: Colors.transparent, textColor: Colors.black, boxShadowColor: Color(0xFF96C4E1)),
            MyTabBar(color: Colors.transparent, text: "Best Offers", bordercolor: Color(0xFFd6d9d9), textColor: Colors.white, boxShadowColor: Colors.transparent),
            MyTabBar(color: Colors.transparent, text: "Popular", bordercolor: Color(0xFFd6d9d9), textColor: Colors.white, boxShadowColor: Colors.transparent),
          ],
        ),
      );
  }
}



//MyTabBar(color: Color(0xFF96C4E1), text: "Top Rates", bordercolor: Colors.transparent, textColor: Colors.black, boxShadowColor: Color(0xFF96C4E1))
