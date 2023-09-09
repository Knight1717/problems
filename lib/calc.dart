import 'package:decimal/intl.dart';
import 'package:flutter/material.dart';
import 'dart:math';
import 'package:decimal/decimal.dart';


class calc extends StatefulWidget {

  const calc({super.key});

  @override
  State<calc> createState() => _calcState();
}

class _calcState extends State<calc> {
  TextEditingController contro=TextEditingController();
  String num1="", num2="", opr="",result = "", fresult = "";

  bool clk=false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(
        children: [
          Container(
            height: 280,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: Container(
              alignment: Alignment.bottomCenter,
              height: 80,
              width: double.infinity,
              child: TextFormField(
                textAlign: TextAlign.end,
                controller: contro,
                style: TextStyle(fontSize: 50,fontWeight: FontWeight.w700,),
                decoration: InputDecoration(
                  //border: OutlineInputBorder(),
                  enabledBorder: InputBorder.none,
                  contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  hintText: "0",
                  //labelText: "0",
                ),

              ),
            ),
          ),

          SizedBox(height: 30,),
          Container(

            height: 540,
            width: double.infinity,
            decoration: BoxDecoration(
              //border: Border.all(),
              color: Colors.white54,
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 7),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 7,),
                  Row(
                    children: [
                      Container(
                        height: 70,
                        width: 80,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white54,
                        ),
                        child: TextButton(onPressed:(){
                          num1 = "";
                          num2 = "";
                          contro.text = "";
                          clk = false;

                        },style: TextButton.styleFrom(
                          shape: CircleBorder(),
                        ),child: Center(child: Text("AC",style: TextStyle(color: Colors.deepOrange,fontSize: 25),))),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 18),
                        child: Container(
                          height: 70,
                          width: 80,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white54,
                          ),
                          child: TextButton(onPressed:(){

                            String str = contro.text;
                            int len = str.length;
                            num1 = str.substring(0, len-1);
                            contro.text = num1;

                          },style: TextButton.styleFrom(
                            shape: CircleBorder(),
                          ),child: Center(child: Icon(Icons.backspace_outlined,color: Colors.deepOrange,size: 25,) ),
                        ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 18),
                        child: Container(
                          height: 70,
                          width: 80,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white54,
                          ),
                          child: TextButton(onPressed:(){
                            opr = "%";
                            contro.text = opr;
                            clk = true;
                          },style: TextButton.styleFrom(
                            shape: CircleBorder(),
                          ),child: Center(child: Text("%",style: TextStyle(color: Colors.deepOrangeAccent,fontSize: 25),)),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 18),
                        child: Container(
                          height: 70,
                          width: 80,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white54,
                          ),
                          child: TextButton(onPressed:(){
                            opr = "1/";
                            contro.text = opr;
                            clk = true;
                            print("first" + opr);
                          },style: TextButton.styleFrom(
                            shape: CircleBorder(),
                          ),child: Center(child: Text("1/x",style: TextStyle(color: Colors.deepOrange,fontSize: 25),)),
                          ),
                        ),
                      ),
                    ],

                  ),SizedBox(height: 20,),
                  Row(
                    children: [
                      Container(
                        height: 70,
                        width: 80,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white54,
                        ),
                        child: TextButton(onPressed:(){
                          opr = "√";
                          contro.text = opr;
                          clk = true;

                        },style: TextButton.styleFrom(
                          shape: CircleBorder(),
                        ),child: Center(child: Text("√",style: TextStyle(color: Colors.deepOrange,fontSize: 25),))),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 18),
                        child: Container(
                          height: 70,
                          width: 80,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white54,
                          ),
                          child: TextButton(onPressed:(){

                            opr = "log(";
                            contro.text = opr;
                            clk = true;
                            print("first" + opr);

                          },style: TextButton.styleFrom(
                            shape: CircleBorder(),
                          ),child: Center(child: Text("log(",style: TextStyle(color: Colors.deepOrange,fontSize: 23),) ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 18),
                        child: Container(
                          height: 70,
                          width: 80,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white54,
                          ),
                          child: TextButton(onPressed:(){
                            opr = "!";
                            contro.text = opr;
                            clk = true;
                            print("first" + opr);
                          },style: TextButton.styleFrom(
                            shape: CircleBorder(),
                          ),child: Center(child: Text("!",style: TextStyle(color: Colors.deepOrangeAccent,fontSize: 25),)),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 18),
                        child: Container(
                          height: 70,
                          width: 80,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white54,
                          ),
                          child: TextButton(onPressed:(){
                            opr = "/";
                            contro.text = opr;
                            clk = true;
                          },style: TextButton.styleFrom(
                            shape: CircleBorder(),
                          ),child: Center(child: Text("/",style: TextStyle(color: Colors.deepOrange,fontSize: 25),)),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20,),
                  Row(
                    children: [
                      Container(
                        height: 70,
                        width: 80,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white54,
                        ),
                        child: TextButton(onPressed:(){
                          if(clk)
                            {
                              num2 += "7";
                              contro.text = num2;
                            }
                          else
                            {
                              num1 += "7";
                              contro.text = num1;
                            }
                        },style: TextButton.styleFrom(
                          shape: CircleBorder(),
                        ),child: Center(child: Text("7",style: TextStyle(color: Colors.black,fontSize: 25)),
                        ),
                      ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 18),
                        child: Container(
                          height: 70,
                          width: 80,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white54,
                          ),
                          child: TextButton(onPressed:(){
                            if(clk)
                            {
                              num2 += "8";
                              contro.text = num2;
                            }
                            else
                            {
                              num1 += "8";
                              contro.text = num1;
                            }
                          },style: TextButton.styleFrom(
                            shape: CircleBorder(),
                          ),child: Center(child: Text("8",style: TextStyle(color: Colors.black,fontSize: 25)),
                          ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 18),
                        child: Container(
                          height: 70,
                          width: 80,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white54,
                          ),
                          child: TextButton(onPressed:(){
                            if(clk)
                            {
                              num2 += "9";
                              contro.text = num2;
                            }
                            else
                            {
                              num1 += "9";
                              contro.text = num1;
                            }
                          },style: TextButton.styleFrom(
                            shape: CircleBorder(),
                          ),child: Center(child: Text("9",style: TextStyle(color: Colors.black,fontSize: 25)),
                          ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 18),
                        child: Container(
                          height: 70,
                          width: 80,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white54,
                          ),
                          child: TextButton(onPressed:(){
                            opr = "x";
                            contro.text = opr;
                            clk = true;
                          },style: TextButton.styleFrom(
                            shape: CircleBorder(),
                          ),child: Center(child: Text("x",style: TextStyle(color: Colors.deepOrange,fontSize: 25)),
                          ),
                          ),
                        ),
                      ),
                    ],
                  ),SizedBox(height: 20,),

                  Row(
                    children: [
                      Container(
                        height: 70,
                        width: 80,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white54,
                        ),
                        child: TextButton(onPressed:(){
                          if(clk)
                          {
                            num2 += "4";
                            contro.text = num2;
                          }
                          else
                          {
                            num1 += "4";
                            contro.text = num1;
                          }
                        },style: TextButton.styleFrom(
                          shape: CircleBorder(),
                        ),child: Center(child: Text("4",style: TextStyle(color: Colors.black,fontSize: 25)),
                        ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 18),
                        child: Container(
                          height: 70,
                          width: 80,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white54,
                          ),
                          child: TextButton(onPressed:(){
                            if(clk)
                            {
                              num2 += "5";
                              contro.text = num2;
                            }
                            else
                            {
                              num1 += "5";
                              contro.text = num1;
                            }
                          },style: TextButton.styleFrom(
                            shape: CircleBorder(),
                          ),child: Center(child: Text("5",style: TextStyle(color: Colors.black,fontSize: 25)),
                          ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 18),
                        child: Container(
                          height: 70,
                          width: 80,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white54,
                          ),
                          child: TextButton(onPressed:(){
                            if(clk)
                            {
                              num2 += "6";
                              contro.text = num2;
                            }
                            else
                            {
                              num1 += "6";
                              contro.text = num1;
                            }
                          },style: TextButton.styleFrom(
                            shape: CircleBorder(),
                          ),child: Center(child: Text("6",style: TextStyle(color: Colors.black,fontSize: 25)),
                          ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 18),
                        child: Container(
                          height: 70,
                          width: 80,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white54,
                          ),
                          child: TextButton(onPressed:(){
                            opr = "-";
                            contro.text = opr;
                            clk = true;
                          },style: TextButton.styleFrom(
                            shape: CircleBorder(),
                          ),child: Center(child: Text("-",style: TextStyle(color: Colors.deepOrange,fontSize: 25)),
                          ),
                          ),
                        ),
                      ),
                    ],
                  ),SizedBox(height: 20,),
                  Row(
                    children: [
                      Container(
                        height: 70,
                        width: 80,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white54,
                        ),
                        child: TextButton(onPressed:(){
                          if(clk)
                          {
                            num2 += "1";
                            contro.text = num2;
                          }
                          else
                          {
                            num1 += "1";
                            contro.text = num1;
                          }
                        },style: TextButton.styleFrom(
                          shape: CircleBorder(),
                        ),child: Center(child: Text("1",style: TextStyle(color: Colors.black,fontSize: 25)),
                        ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 18),
                        child: Container(
                          height: 70,
                          width: 80,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white54,
                          ),
                          child: TextButton(onPressed:(){
                            if(clk)
                            {
                              num2 += "2";
                              contro.text = num2;
                            }
                            else
                            {
                              num1 += "2";
                              contro.text = num1;
                            }
                          },style: TextButton.styleFrom(
                            shape: CircleBorder(),
                          ),child: Center(child: Text("2",style: TextStyle(color: Colors.black,fontSize: 25)),
                          ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 18),
                        child: Container(
                          height: 70,
                          width: 80,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white54,
                          ),
                          child: TextButton(onPressed:(){
                            if(clk)
                            {
                              num2 += "3";
                              contro.text = num2;
                            }
                            else
                            {
                              num1 += "3";
                              contro.text = num1;
                            }
                          },style: TextButton.styleFrom(
                            shape: CircleBorder(),
                          ),child: Center(child: Text("3",style: TextStyle(color: Colors.black,fontSize: 25)),
                          ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 18),
                        child: Container(
                          height: 70,
                          width: 80,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white54,
                          ),
                          child: TextButton(onPressed:(){
                            opr = "+";
                            contro.text = opr;
                            clk = true;
                          },style: TextButton.styleFrom(
                            shape: CircleBorder(),
                          ),child: Center(child: Text("+",style: TextStyle(color: Colors.deepOrange,fontSize: 25)),
                          ),
                          ),
                        ),
                      ),
                    ],
                  ),SizedBox(height: 20,),
                  Row(
                    children: [
                      Container(
                        height: 70,
                        width: 80,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white54,
                        ),
                        child: TextButton(onPressed:(){
                          opr = "^";
                          contro.text = opr;
                          clk = true;
                        },style: TextButton.styleFrom(
                          shape: CircleBorder(),
                        ),child: Center(child: Text("x^",style: TextStyle(color: Colors.deepOrangeAccent,fontSize: 25),),
                        ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 18),
                        child: Container(
                          height: 70,
                          width: 80,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white54,
                          ),
                          child: TextButton(onPressed:(){
                            if(clk)
                            {
                              num2 += "0";
                              contro.text = num2;
                            }
                            else
                            {
                              num1 += "0";
                              contro.text = num1;
                            }
                          },style: TextButton.styleFrom(
                            shape: CircleBorder(),
                          ),child: Center(child: Text("0",style: TextStyle(color: Colors.black,fontSize: 25)),
                          ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 18),
                        child: Container(
                          height: 70,
                          width: 80,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white54,
                          ),
                          child: TextButton(onPressed:(){
                            if(clk)
                            {
                              num2 +=  ".";
                              contro.text = num2;
                            }
                            else
                            {
                              num1 += ".";
                              contro.text = num1;
                            }
                            print("first" + num1);
                            print("sec" + num2);

                          },style: TextButton.styleFrom(
                            shape: CircleBorder(),
                          ),child: Center(child: Text(".",style: TextStyle(color: Colors.black,fontSize: 25)),
                          ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 18),
                        child: Container(
                          height: 70,
                          width: 80,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white54,
                          ),
                          child: TextButton(onPressed:(){

                            if(opr == "+")
                              {
                                double a = double.parse(num1);
                                double b = double.parse(num2);

                                double res = a+b;

                                contro.text = res.toString();
                              }

                            if(opr == "-")
                            {
                              double a = double.parse(num1);
                              double b = double.parse(num2);

                              double res = a-b;

                              contro.text = res.toString();
                            }
                            if(opr == "x")
                            {
                              double a = double.parse(num1);
                              double b = double.parse(num2);

                              double res = a*b;

                              contro.text = res.toString();
                            }
                            if(opr == "/")
                            {
                              double a = double.parse(num1);
                              double b = double.parse(num2);

                              double res = a/b;

                              contro.text = res.toString();
                            }
                            if(opr == "%")
                            {
                              double a = double.parse(num1);
                              double b = double.parse(num2);

                              double res = a%b;

                              contro.text = res.toString();
                            }
                            if(opr == "^")
                            {
                              double a = double.parse(num1);
                              double b = double.parse(num2);

                              num res = pow(a, b);

                              contro.text = res.toString();
                            }
                            if(opr == "√")
                              {
                                double a = double.parse(num1);

                                var res = sqrt(a);
                                contro.text = res.toString();
                              }
                            if(opr == "log(")
                            {
                              double a = double.parse(num1);

                              var res = log(a);
                              contro.text = res.toString();
                            }
                            if(opr == "!")
                            {
                              double a = double.parse(num1);
                              int res = 1;
                              for (int i = 1; i <= a; i++) {
                                res *= i;
                              }
                              contro.text = res.toString();
                            }
                            if(opr == "1/")
                            {
                              double a = double.parse(num1);

                              var res = 1/a;
                              contro.text = res.toString();
                            }


                            num1 = contro.text;
                            num2 = "";
                            String res = "";
                            clk = false;


                          },style: TextButton.styleFrom(
                            shape: CircleBorder(),backgroundColor: Colors.deepOrange
                          ),child: Center(child: Text("=",style: TextStyle(color: Colors.white,fontSize: 25)),
                          ),
                          ),
                        ),
                      ),
                    ],
                  ),

                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  }

