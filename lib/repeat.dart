import 'package:flutter/material.dart';

class rep extends StatefulWidget {
  const rep({super.key});

  @override
  State<rep> createState() => _repState();
}

class _repState extends State<rep> {
  TextEditingController rep1 = TextEditingController();
  String val = "";
  String result = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Repeat",style: TextStyle(fontWeight: FontWeight.w700),)),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top:100.0),
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 18.0),
                  child: Text("Enter the value",style: TextStyle(fontSize: 20),),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 50,
                    width: 200,
                    child: TextFormField(
                      controller: rep1,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "value",
                      ),
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: ElevatedButton(onPressed: (){
                setState(() {

    String val = rep1.text;                             //unique characters
    bool rep = false;
    String x = "Unique";
    String y = "Not Unique";
    for(int i=0; i<val.length; i++)
    {
      for(int j=i+1; j<val.length; j++)
     {
        if(val[i] == val[j])
      {
          rep = true;

      }
     }
    }
      if(rep == true)
     {
        result = y;
     }
      else
     {
        result = x;
     }


    });
              }, child: Text("Click")),
            ),SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.only(left: 18.0),
              child: Row(
                children: [
                  Text("Result : $result",style: TextStyle(fontSize: 20),),
                ],
              ),
            ),


          ],
        ),
      ),
    );
  }
}
