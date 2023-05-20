import 'dart:async';

import 'package:findmech/phone_screen.dart';
import 'package:findmech/user_current_location.dart';
import 'package:findmech/welcome_screen.dart';
import 'package:flutter/material.dart';

import 'login_screen.dart';
import 'new_account_screen.dart';
void main()
{

  runApp(MaterialApp(
      home: SplashScreen() ));
}

class SplashScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => SplashScreenState();

}

class SplashScreenState extends State<StatefulWidget>{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: Container(
          height: 50,
          margin: const EdgeInsets.all(20),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: ElevatedButton(onPressed: (){
              showDialog(context: context, builder: (context){
                return Container(
                  child: AlertDialog(
                    title: Text("Get back on road in no time!"),
                    actions: [
                      Column(children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                ElevatedButton(onPressed: (){
                                  // Navigator.push(context, MaterialPageRoute(builder: (context) => MyPhone()));
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => MyNewAccount()));

                                }, child: Text("Sign Up")),
                                ElevatedButton(onPressed: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => MyLoginScreen()));
                                }, child: Text("Log In")),
                              ],
                            ),
                          ),
                        )

                      ],

                      )
                    ],
                  ),
                );
              }
              );
            },style: ElevatedButton.styleFrom(
              primary: Color(0xff142A45),
            ),
              child: Padding(
                padding: const EdgeInsets.only(left: 70, right: 70, top:12, bottom: 12),
                child: Text('Get Started', style: TextStyle(color: Colors.white, letterSpacing: .5),),
              ),

            ),
          ),
        ),
        body: Center(
          child: Container(
            height: double.infinity,
            width: double.infinity,
            color: Colors.indigo.shade400,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  child: Image.asset('assets/images/main_icon.png'),
                  width: 150,
                  height: 150,
                ),
                SizedBox(height: 5,),
                Center(
                  child: Text('3A FIND', style: TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                      color: Colors.white)),
                ),
                Center(
                  child: Text('MECHANIC', style: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,)),
                ),
                SizedBox(height: 10),
                Center(
                  child: Text('anytime, anywhere, affordable', style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.normal,
                    color: Colors.black,
                  )),
                ),
                // Container(height: 200),
              ],
            ),
          ),
        )
    );
  }}