import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class myregistration extends StatefulWidget {
  const myregistration({Key? key}) : super(key: key);

  @override
  State<myregistration> createState() => _myregistrationState();
}

class _myregistrationState extends State<myregistration> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/registration.png'),fit: BoxFit.cover),
      ),

      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Container(
              padding: EdgeInsets.only(left: 35,top: 130),
              child: Text('Create\naccount',
                style: TextStyle(color: Colors.white,fontSize: 50),
              ),
            ),
            SingleChildScrollView(
              padding: EdgeInsets.only(bottom: 30),
              child: Container(
                padding: EdgeInsets.only( top: MediaQuery.of(context).size.height*0.35,right: 25,left: 25),
                child: Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                        fillColor: Colors.grey.shade100,
                        filled: true,
                        labelText: 'First Name ',
                        border: OutlineInputBorder(
                            borderRadius:  BorderRadius.circular(10)),

                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    TextField(
                      decoration: InputDecoration(
                        fillColor: Colors.grey.shade100,
                        filled: true,
                        labelText: 'Last Name ',
                        border: OutlineInputBorder(
                            borderRadius:  BorderRadius.circular(10)),

                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    TextField(
                      decoration: InputDecoration(
                        fillColor: Colors.grey.shade100,
                        filled: true,
                        labelText: 'Email',
                        border: OutlineInputBorder(
                            borderRadius:  BorderRadius.circular(10)),

                      ),
                    ),

                    SizedBox(
                      height: 30,
                    ),
                    TextField(

                      decoration: InputDecoration(
                        fillColor: Colors.grey.shade100,
                        filled: true,
                        labelText: 'Password',
                        border: OutlineInputBorder(
                            borderRadius:  BorderRadius.circular(10)),
                      ),

                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Row(

                      children: [Text('Sign Up',

                        style: TextStyle(
                            fontSize: 27,
                            fontWeight: FontWeight.w700),
                      ),
                        CircleAvatar(
                          radius: 30,
                          backgroundColor: Color(0xff4c505b),
                          child: IconButton(
                              color: Colors.white,
                              onPressed: () {},
                              icon: Icon(Icons.arrow_forward)),
                        ),

                      ],
                      mainAxisAlignment:  MainAxisAlignment.spaceBetween,
                    ),

                    SizedBox(height: 40,),
                    Row(
                      mainAxisAlignment:  MainAxisAlignment.spaceBetween,

                      children: [
                        TextButton(onPressed: (){
                          Navigator.pushNamed(context, "login");
                        }, child: Text('Sign IN ',
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
