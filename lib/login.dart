import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MyLogin extends StatefulWidget {
  const MyLogin({Key? key}) : super(key: key);

  @override
  State<MyLogin> createState() => _MyLoginState();
}

class _MyLoginState extends State<MyLogin> {


  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/login.png'),fit: BoxFit.cover),
      ),

      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Container(
              padding: EdgeInsets.only(left: 35,top: 180),
              child: Text('Welcome\nback',
              style: TextStyle(color: Colors.white,fontSize: 50),
              ),
            ),

            SingleChildScrollView(
                key: _formkey,
              child: Container(
                padding: EdgeInsets.only( top: MediaQuery.of(context).size.height*0.45,right: 35,left: 35),
                child: Column(
                  children: [

                    TextFormField(
                      decoration: InputDecoration(
                        fillColor: Colors.grey.shade100,
                        filled: true,
                        labelText: 'Email',
                        border: OutlineInputBorder(
                            borderRadius:  BorderRadius.circular(10)),

                      ),

                      validator: (value){
                        if(value!.isEmpty)
                          {
                            return "Enter the Correct Email";
                          }
                        else
                          {
                            return null;
                          }
                      },
                    ),

                    SizedBox(
                      height: 30,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        fillColor: Colors.grey.shade100,
                        filled: true,
                        labelText: 'Password',
                        border: OutlineInputBorder(
                          borderRadius:  BorderRadius.circular(10)),
                      ),

                      validator: (value)
                      {
                        if(value!.isEmpty)
                          {
                            return "Please Enter Correct Password";
                          }
                        return null;
                      },
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Row(
                      mainAxisAlignment:  MainAxisAlignment.spaceBetween,
                      children: [Text('Sign In', style: TextStyle(fontSize: 27,fontWeight: FontWeight.w700),),
                        CircleAvatar(
                          radius: 30,
                        backgroundColor: Color(0xff4c505b),
                        child: IconButton(onPressed: () {
                          setState(() {
                            if(_formkey.currentState!.validate())
                              {
                                Navigator.pushNamed(context, "registration");

                              }

                          });



                        },

                          icon: Icon(Icons.arrow_forward)
                        ),
                        ),
                      ],
                    ),

                    SizedBox(height: 50,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextButton(onPressed: (){
                          Navigator.pushNamed(context, "registration");

                        }, child: Text('Sign Up ',
                          style: TextStyle(decoration: TextDecoration.underline, fontSize: 18, color: Color(0xcff4c505b),),
                        )
                        ),
                        TextButton(onPressed: (){}, child: Text('Forget password', style: TextStyle(decoration: TextDecoration.underline, fontSize: 18, color: Color(0xcff4c505b),
                        ),
                        ))
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
