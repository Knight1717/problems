import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:untitled/E-commerce.dart';
import 'package:untitled/ebottom.dart';
import 'package:untitled/ecom2.dart';

final formKey = GlobalKey<FormState>();
String name="";
String pass="";
class elogo extends StatefulWidget {
  const elogo({super.key});

  @override
  State<elogo> createState() => _elogoState();
}

class _elogoState extends State<elogo> {
TextEditingController txtName = TextEditingController();
TextEditingController txtPwd = TextEditingController();
  @override
  Widget build(BuildContext context) {


    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: Container(
          height: 470,
          width: 350,
          decoration: BoxDecoration(
            color: Colors.white,
          ),
          child: Form(
            key: formKey,
            child: Column(
              children: [
                SizedBox(height: 10,),
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                    image: DecorationImage(
                      image: AssetImage("assets/cart.jpg"),
                      fit: BoxFit.fill,
                    )
                  ),
                ),SizedBox(height: 40,),
                Container(
                  height: 70,
                  width: 300,
                  child: TextFormField(
                    controller: txtName,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Email",
                      icon: Icon(Icons.person),
                    ),
                    validator: (x){

                        if(x == null || x.isEmpty)
                        {
                          return 'Enter email';
                        }
                        else if(!x.contains("@") || !x.contains(".")){
                          return "Enter valid email";
                        }
                        else if(x.length<3){
                          return "Minimum 3 characters";
                        }
                        return null;
                    }


                  ),
                ),SizedBox(height: 30,),
                Container(
                  height: 70,
                  width: 300,
                  child: TextFormField(
                    controller: txtPwd,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Password",
                      icon: Icon(Icons.lock),
                    ),
                    validator: (pass)
                      {
                        if(pass == null || pass.isEmpty)
                          {
                            return 'Enter password';
                          }
                        else if(pass.length<8){
                          return "Contain 8 character";
                        }
                        return null;
                      }
                    //=>txtPwd.text!.length<8? 'Enter 8 character':null,

                  ),
                ),SizedBox(height: 20,),
                TextButton(onPressed: (){
                  if( formKey.currentState!.validate())
                    {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => ebot()));
                    }

                }, child: Text("Login",style: TextStyle(fontSize: 19),)),
                SizedBox(height: 20,),
                TextButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> ereg()));
                }, child: Text("Register",style: TextStyle(fontSize: 19),)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
