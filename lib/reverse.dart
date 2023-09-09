import 'package:flutter/material.dart';

class rev extends StatefulWidget {
  const rev({super.key});

  @override
  State<rev> createState() => _revState();
}


class _revState extends State<rev> {

  TextEditingController edit = TextEditingController();

  String val = "";
  String result = "";
  bool clk = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Reverse",style: TextStyle(fontWeight: FontWeight.w700),)),
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
                      controller: edit,
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
                   val = edit.text;                           //reversed
                  String rev = "";

                  for(int i = val.length-1;i>=0;i--){
                    rev += val[i];
                  }
                  print(rev);

                   result = rev;

                 });
              }, child: Text("Click")),
            ),SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.only(left: 18.0),
              child: Row(
                children: [
                  Text("The Reversed string is : $result",style: TextStyle(fontSize: 20),),
                ],
              ),
            ),


          ],
        ),
      ),
    );
  }
}
