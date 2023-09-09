import 'package:flutter/material.dart';
import 'package:untitled/E-commerce.dart';
import 'package:untitled/ebottom.dart';

class lens extends StatelessWidget {
  const lens({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80),
        child: AppBar(
            leading: TextButton(onPressed: (){
      Navigator.push(context, MaterialPageRoute(builder: (context)=>ebot()));
      },child: Icon(Icons.arrow_back,color: Colors.black,),),
          title: Center(
            child: Container(
              alignment: Alignment.center,
                height: 50,
                width: 200,
                decoration: BoxDecoration(
                  //border: Border.all(),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 28.0),
                      child: Icon(Icons.lens_outlined),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Text("Amazon",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                    ),
                    Text("Lens",style: TextStyle(fontSize: 20,),)
                  ],
                ),
            ),
          ),
          actions: [
            TextButton(onPressed:(){},child:Icon(Icons.question_mark_rounded,size: 30,)),
          ],
          
        ),
      ),
      body: Column(
        children: [
          Container(
            height: 500,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.blue,
              image: DecorationImage(
                image: AssetImage("assets/lens.png"),
                fit: BoxFit.fill,
              )
            ),
          ),SizedBox(height: 25,),
          Text("Find the look from your photos",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w500),),
          SizedBox(height: 15,),
          Container(
              height: 40,
              width: 200,
              child: ElevatedButton(onPressed: (){}, child: Text("Upload a photo",style: TextStyle(fontSize: 20),))),
        ],
      ),
    );
  }
}
