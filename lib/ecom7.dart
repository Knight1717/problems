import 'package:flutter/material.dart';
import 'package:untitled/E-com1.dart';

class ecom6 extends StatelessWidget {
  const ecom6({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 100,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.cyanAccent,
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 50,left: 10),
              child: Text("Hello",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 30),),
            ),
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                    height: 50,
                    width:180,
                    child: ElevatedButton(onPressed: (){}, child: Text("Your Orders",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w400,fontSize: 20),))),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                    height: 50,
                    width:180,
                    child: ElevatedButton(onPressed: (){}, child: Text("Buy Again",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w400,fontSize: 20),))),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                    height: 50,
                    width:180,
                    child: ElevatedButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>elogo()));
                    }, child: Text("Logout",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w400,fontSize: 20),))),
              ),
            ],
          )
        ],
      ),
    );
  }
}
