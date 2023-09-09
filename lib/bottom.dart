import 'package:flutter/material.dart';
import 'package:untitled/E-commerce.dart';
import 'package:untitled/div.dart';

import 'package:untitled/palin.dart';
import 'package:untitled/panagram.dart';
import 'package:untitled/repeat.dart';
import 'package:untitled/reverse.dart';
import 'package:untitled/roman.dart';

class boto extends StatefulWidget {
  const boto({super.key});

  @override
  State<boto> createState() => _botoState();
}

class _botoState extends State<boto> {
  int ind=0;

  final pages=[
    rev(),
    palin(),
    div(),
    rep(),
    roman(),
    pana(),
  ];

  void tap(index)
  {
    setState(() {
      ind=index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[ind],
      bottomNavigationBar: BottomNavigationBar(
        items:[
          BottomNavigationBarItem(icon: Icon(Icons.adb,),label: 'Reverse',backgroundColor: Colors.black),
          BottomNavigationBarItem(icon: Icon(Icons.accessibility,),label: 'Palindrome',backgroundColor: Colors.black),
          BottomNavigationBarItem(icon: Icon(Icons.add_box,),label: 'Divisible',backgroundColor: Colors.black),
          BottomNavigationBarItem(icon: Icon(Icons.account_balance_rounded,),label: 'Repeat',backgroundColor: Colors.black),
          BottomNavigationBarItem(icon: Icon(Icons.add_a_photo_sharp,),label: 'Roman',backgroundColor: Colors.black),
          BottomNavigationBarItem(icon: Icon(Icons.back_hand,),label: 'Panagram',backgroundColor: Colors.black),
        ],
        currentIndex: ind,
        onTap: tap,
      ),
    );
  }
}
