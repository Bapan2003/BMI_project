import 'dart:async';

import 'package:bmi/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class splash_screen extends StatefulWidget{
  @override
  State<splash_screen> createState() => _splash_screenState();
}

class _splash_screenState extends State<splash_screen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(milliseconds: 2000), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>MyHomePage(title: "BMI Calculator"),));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.deepPurple,
        // child: Center(
        //   child: Image.asset('assets/images/bmi_logo.png'),
        // ),
        child: Center(child: Text('BMI',style: TextStyle(
            color: Colors.white60,
            fontWeight: FontWeight.w700,
            fontSize: 100,
            fontStyle: FontStyle.italic,
        ),)),
      ),
    );
  }
}