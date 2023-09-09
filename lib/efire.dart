import 'package:flutter/material.dart';

class fire extends StatelessWidget {
  const fire({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 400,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/smrt1.jpg"),
                fit: BoxFit.fill,
              )
            ),
          ),
          Container(
            height: 400,
            decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/smrt2.jpg"),
                  fit: BoxFit.fill,
                )
            ),
          ),
        ],
      ),


    );
  }
}
