import 'package:flutter/material.dart';
//import 'package:flutter_carousel_slider/carousel_slider.dart';

class sam extends StatefulWidget {
  const sam({super.key});

  @override
  State<sam> createState() => _ecomState();
}

class _ecomState extends State<sam> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyanAccent,
        leading: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white54,
              image: DecorationImage(
                image: AssetImage("assets/ecom2.png"),
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
        title: Container(
          height: 45,
          width: 330,
          child: TextFormField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: "Search",
              prefixIcon: Icon(Icons.search),
            ),
          ),
        ),
      ),


    );
  }
}