import 'package:flutter/material.dart';

class roman extends StatefulWidget {
  const roman({super.key});

  @override
  State<roman> createState() => _romanState();
}

class _romanState extends State<roman> {
  TextEditingController rom = TextEditingController();
  String romanval = "";
   int fvalue = 0;
  int roman(String s)
  {
    Map<String, dynamic> rvalues = {
      'I': 1,
      'V': 5,
      'X': 10,
      'L': 50,
      'C': 100,
      'D': 500,
      'M': 1000,
    };

    int res = 0;
    int pvalue = 0;
    int n = s.length;

    for(int i = n-1; i>=0; i--)
    {
      int cvalue = rvalues[s[i]];

      if(cvalue >= pvalue)
      {
        res += cvalue;
      }
      else
      {
        res -= cvalue;
      }
      pvalue = cvalue;
    }
    return res;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Roman to Integer",style: TextStyle(fontWeight: FontWeight.w700),)),
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
                      controller: rom,
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
                print("djfncn");
                setState(() {



                     romanval = rom.text;
                     fvalue = roman(romanval);
                    print("the value is $fvalue");


                });
              }, child: Text("Click")),
            ),SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.only(left: 18.0),
              child: Row(
                children: [
                  Text("The integer value is : $fvalue",style: TextStyle(fontSize: 20),),
                ],
              ),
            ),


          ],
        ),
      ),
    );
  }
}
