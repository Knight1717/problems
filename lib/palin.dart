import 'package:flutter/material.dart';

class palin extends StatefulWidget {
  const palin({super.key});

  @override
  State<palin> createState() => _palinState();
}

class _palinState extends State<palin> {

  TextEditingController plain = TextEditingController();
  String val = "";
  String result = "";
  String value = "";
  bool clk = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Palindrom",style: TextStyle(fontWeight: FontWeight.w700),)),
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
                      controller: plain,
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
                  val = plain.text;                          //palindrome
                  String reve="";
                  String x = "Palindrome";
                  String y = "not a Palindrome";

                  for(int i = val.length-1; i>=0; i--)
                  {
                    reve += val[i];
                  }
                  if(val == reve)
                  {
                    result = x;
                  }
                  else{
                    result = y;
                  }

                  value = reve;

                });
              }, child: Text("Click")),
            ),SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.only(left: 18.0),
              child: Row(
                children: [
                  Text("Value : $value",style: TextStyle(fontSize: 20),),
                ],
              ),
            ),
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
