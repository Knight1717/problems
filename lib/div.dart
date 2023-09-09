import 'package:flutter/material.dart';

class div extends StatefulWidget {
  const div({super.key});

  @override
  State<div> createState() => _divState();
}

class _divState extends State<div> {

  TextEditingController divi = TextEditingController();
  TextEditingController divi1 = TextEditingController();
  String num1 = "";
  String num2 = "";
  String result = "";
  String value = "";
  bool clk = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Divisible",style: TextStyle(fontWeight: FontWeight.w700),)),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top:100.0),
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 18.0),
                  child: Text("Enter number 1",style: TextStyle(fontSize: 20),),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 50,
                    width: 200,
                    child: TextFormField(
                      controller: divi,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "number 1",
                      ),
                    ),
                  ),
                )
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 18.0),
                  child: Text("Enter number 2",style: TextStyle(fontSize: 20),),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 50,
                    width: 200,
                    child: TextFormField(
                      controller: divi1,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "number 2",
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
                   num1 = divi.text;                                   //divisible
                   num2 = divi1.text;
                   int a = int.parse(num1);
                   int b = int.parse(num2);
                   int c;
                   String x = "divisible";
                   String y = "not divisible";

                   c = a % b;

                  if(c == 0)
                  {
                    result = x;
                  }
                  else
                  {
                    result = y;
                  }
                  value = c.toString();
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
