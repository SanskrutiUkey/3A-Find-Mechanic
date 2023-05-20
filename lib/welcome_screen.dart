

import 'package:findmech/contact_us.dart';
import 'package:findmech/homea.dart';
import 'package:findmech/new_account_screen.dart';
import 'package:findmech/phone_screen.dart';
import 'package:findmech/user_customer_new_account.dart';
import 'package:flutter/material.dart';

import 'home_screen.dart';
import 'login_screen.dart';

class WelcomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        alignment: Alignment.center,
        color: Color(0xff090930),
        child: Container(
          height: 430,
          width: 315,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40),
            color: Color(0xff4C5FA3),
          ),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 25,),
              Container(
                child: Image.asset('assets/images/main_icon.png'),
                width: 100,
                height: 100,

              ),
               SizedBox(height: 40,),
               ElevatedButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => registerScreen()));
               }, child: Padding(
                padding: const EdgeInsets.only(left: 25, right: 25, top: 20, bottom: 20),
                child: Text('FOR CUSTOMER ', style: TextStyle(color: Color(0xff090930), fontWeight: FontWeight.w600)),
               ),
                 style: ElevatedButton.styleFrom(
                 primary: Color(0xffD9D9D9),
                   shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))
               ),),

              SizedBox(height: 50,),
              ElevatedButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => MyNewAccount()));
              }, child: Padding(
                padding: const EdgeInsets.only(left: 25, right: 25, top: 20, bottom: 20),
                child: Text('FOR GARAGE OWNER', style: TextStyle(color: Color(0xff090930), fontWeight: FontWeight.w600)),
              ),
                style: ElevatedButton.styleFrom(
                    primary: Color(0xffD9D9D9),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))
                ),),

              // ElevatedButton(onPressed: (){
              //   // Navigator.push(context, MaterialPageRoute(builder: (context) => MyHomeA()));
              //   Navigator.push(context, MaterialPageRoute(builder: (context) => registerScreen()));
              // }, child: Padding(
              //   padding: const EdgeInsets.only(left: 25, right: 25, top: 20, bottom: 20),
              //   child: Text('Temp', style: TextStyle(color: Color(0xff090930), fontWeight: FontWeight.w600)),
              // ),
              //   style: ElevatedButton.styleFrom(
              //       primary: Color(0xffD9D9D9),
              //       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))
              //   ),),
              // ElevatedButton(onPressed: (){
              //   Navigator.push(context, MaterialPageRoute(builder: (context) => MyLoginScreen()));
              // }, child: Padding(
              //   padding: const EdgeInsets.only(left: 25, right: 25, top: 20, bottom: 20),
              //   child: Text('Home', style: TextStyle(color: Color(0xff090930), fontWeight: FontWeight.w600)),
              // ),
              //   style: ElevatedButton.styleFrom(
              //       primary: Color(0xffD9D9D9),
              //       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))
              //   ),),
            ],
          ),
        )
      ),
    );
  }
}