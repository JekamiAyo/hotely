import 'package:flutter/material.dart';


class SearchBar extends StatelessWidget {
  const SearchBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        color: Color(0xFF283636),
        borderRadius: BorderRadius.circular(15)
      ),
      child: Row(
        children: const [
           Icon(Icons.search, color: Color(0xFFd6d9d9)),
           Expanded(child: TextField(
            decoration: InputDecoration(),
           )),
           Icon(Icons.mic_none_rounded, color: Color(0xFF4a626b) ,),
          ],
      ),
    );
  }
}