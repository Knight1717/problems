import 'package:flutter/material.dart';
import 'package:untitled/E-com1.dart';


final formKey = GlobalKey<FormState>();
String name="";
String email="";
String num="";
String lock="";
String lock1="";
class ereg extends StatefulWidget {
  const ereg({super.key});

  @override
  State<ereg> createState() => _eregState();
}

class _eregState extends State<ereg> {
  TextEditingController Name = TextEditingController();
  TextEditingController Email = TextEditingController();
  TextEditingController Num = TextEditingController();
  TextEditingController Pass = TextEditingController();
  TextEditingController Pass1 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: Container(
          height: 670,
          width: 370,
          decoration: BoxDecoration(
          color: Colors.white,
    ),
          child: Form(
            key: formKey,
            child: Column(
              children: [
                SizedBox(height: 30,),
                Text("Register",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 25),),
                SizedBox(height: 30,),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Name",style: TextStyle(fontSize: 18),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Container(
                          height: 70,
                          width: 250,
                          child: TextFormField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: "Name",
                            ),
                            validator: (name)
                              {
                                if(name == null || name.isEmpty)
                                {
                                  return 'Enter name';
                                }
                                else if(name.length<3){
                                  return "Enter minimum 3 characters";
                                }
                                return null;
                              }
                          )),
                    ),
                  ],
                ),SizedBox(height: 30,),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Email ",style: TextStyle(fontSize: 18),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Container(
                          height: 70,
                          width: 250,
                          child: TextFormField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: "Email",
                            ),
                            validator: (email)
                              {
                                if(email == null || email.isEmpty)
                                {
                                  return 'Enter email';
                                }
                                else if(!email.contains("@") || !email.contains(".")){
                                  return "Enter valid email";
                                }
                                return null;
                              }
                          )),
                    ),
                  ],
                ),SizedBox(height: 30,),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("P-no  ",style: TextStyle(fontSize: 18),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Container(
                          height: 70,
                          width: 250,
                          child: TextFormField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: "P-no",
                            ),
                            validator: (num)
                              {
                                if(num == null || num.isEmpty)
                                {
                                  return 'Enter phone number';
                                }
                                else if(num.length<10){
                                  return "Enter 10 digits";
                                }
                                return null;
                              }
                          )),
                    ),
                  ],
                ),SizedBox(height: 30,),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Lock  ",style: TextStyle(fontSize: 18),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Container(
                          height: 70,
                          width: 250,
                          child: TextFormField(
                            controller: Pass,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: "Lock",
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
                          )),
                    ),
                  ],
                ),SizedBox(height: 30,),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Text("Lock-1",style: TextStyle(fontSize: 18),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Container(
                          height: 70,
                          width: 250,
                          child: TextFormField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: "Lock-1",
                            ),
                            validator: (pass1)
                              {
                                if(pass1 == null || pass1.isEmpty)
                                {
                                  return 'Enter password';
                                }
                                else if(pass1.length<8){
                                  return "Contain 8 character";
                                }
                                else if(pass1 != Pass.text){
                                  return "Password mismatch";
                                }
                                return null;
                              }
                          )),
                    ),
                  ],
                ),SizedBox(height: 30,),

                TextButton(onPressed: (){
                  if(formKey.currentState!.validate()) {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => elogo()));
                  }
                }, child: Text("SignIn",style: TextStyle(fontSize: 20),))

              ],
            ),
          ),
        ),
      ),
    );
  }
}
