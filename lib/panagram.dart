import 'package:flutter/material.dart';

class pana extends StatefulWidget {
  const pana({super.key});

  @override
  State<pana> createState() => _panaState();
}

class _panaState extends State<pana> {
  TextEditingController pan = TextEditingController();
  String input = "";
  String result = "";
  bool clk = false;

  bool isPangram(String text) {
    Set<String> alphabet = Set.from('abcdefghijklmnopqrstuvwxyz'.split(''));
    text = text.toLowerCase();

    for (int i = 0; i < text.length; i++) {
      alphabet.remove(text[i]);
      if (alphabet.isEmpty) {
        return true;
      }
    }

    return false;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Panagram",style: TextStyle(fontWeight: FontWeight.w700),)),
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
                      controller: pan,
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



                    input = pan.text;
                    String a = "panagram";
                    String b = "not a panagram";
                    if (isPangram(input)) {
                      result = a;
                    } else {
                      result = b;
                    }

                });
              }, child: Text("Click")),
            ),SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.only(left: 18.0),
              child: Row(
                children: [
                  Text("The given value is : $result",style: TextStyle(fontSize: 20),),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
