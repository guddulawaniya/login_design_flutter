import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'login.dart';
import 'main.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyhomePage(),
      debugShowCheckedModeBanner: false,
    );


  }


}

class MyhomePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => SplashScreenState();

}
class SplashScreenState extends State<MyHomePage>{

  void initState(){
    super.initState();
    Timer(Duration(seconds: 5),()=>Navigator.pushReplacement(context,
        MaterialPageRoute(builder: (context)=>MyLogin()))
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      child:  FlutterLogo(size: MediaQuery.of(context).size.height,),
    );
  }


}
