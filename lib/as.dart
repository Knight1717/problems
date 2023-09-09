import 'package:flutter/material.dart';



class asd extends StatefulWidget {
  const asd({super.key});

  @override
  State<asd> createState() => _asdState();
}

class _asdState extends State<asd> {


  TextEditingController ctrl = TextEditingController();

  String num1="",num2= '',seloptr='';

  bool clk = false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height:200 ,),
          TextFormField(
            controller: ctrl,
          ),
          SizedBox(height:100 ,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(onPressed: (){
              if(clk)
                {
                  num2 += '1';
                  ctrl.text = num2!;
                }
              else
                {
                  num1 += '1';
                  ctrl.text = num1!;
                }

              }, child: Text("1")),
              ElevatedButton(onPressed: (){
                if(clk)
                {
                  num2 += '2';
                  ctrl.text = num2!;
                }
                else
                {
                  num1 += '2';
                  ctrl.text = num1!;
                }
              }, child: Text("2")),
              ElevatedButton(onPressed: (){
                ctrl.text = '+';
                seloptr = '+';
                clk = true;
              }, child: Text("+")),
              ElevatedButton(onPressed: (){

                if(seloptr == '+')
                  {
                    int a = int.parse(num1!);
                    int b = int.parse(num2!);

                    int res = a + b ;

                    ctrl.text =res.toString();

                  }
              }, child: Text("=")),
            ],
          )
        ],
      ),
    );
  }
}
