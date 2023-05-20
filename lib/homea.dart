
import 'package:findmech/about_us.dart';
import 'package:findmech/contact_us.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'home_screen.dart';
class MyHomeA extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff59AEFC),
      ),
      body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xff59AEFC), Color(0xfffff1eb)],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                // stops: [0.0, 0.9]
              ),
          ),
        child: Column(
          children: [
            SizedBox(height: 20,),
            Container(
              height: 50,
              width: 300,
              child: ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => MyHome()));
              },
                child: Row(
                  children: [
                    Icon(Icons.account_circle_outlined, color: Colors.black,size: 40,),
                    Padding(
                      padding: const EdgeInsets.only(left: 20, right: 5, top: 10, bottom: 10),
                      child: Text('View Profile ', style: TextStyle(color: Colors.black, fontSize: 25)),
                    ),
                    SizedBox(width: 18,),
                    Icon(Icons.arrow_forward_ios_rounded, color: Colors.black,)
                  ],
                ),
                style: ElevatedButton.styleFrom(
                  primary: Color(0xff22A1FF),

                ),),
            ),
            SizedBox(height: 20,),
            Container(
              height: 50,
              width: 300,
              child: ElevatedButton(onPressed: (){},
                child: Row(
                  children: [
                    Icon(Icons.account_circle, color: Colors.black,size: 40,),
                    Padding(
                      padding: const EdgeInsets.only(left: 20, right: 5, top: 10, bottom: 10),
                      child: Text('My Account', style: TextStyle(color: Colors.black, fontSize: 25)),
                    ),
                    SizedBox(width: 22,),
                    Icon(Icons.arrow_forward_ios_rounded, color: Colors.black,)
                  ],
                ),
                style: ElevatedButton.styleFrom(
                  primary: Color(0xff22A1FF),

                ),),
            ),
            SizedBox(height: 20,),
            Container(
              height: 50,
              width: 300,
              child: ElevatedButton(onPressed: (){},
                child: Row(
                  children: [
                    Icon(Icons.question_answer, color: Colors.black,size: 38,),
                    Padding(
                      padding: const EdgeInsets.only(left: 20, right: 5, top: 10, bottom: 10),
                      child: Text('FAQ ', style: TextStyle(color: Colors.black, fontSize: 25)),
                    ),
                    SizedBox(width: 105,),
                    Icon(Icons.arrow_forward_ios_rounded, color: Colors.black,)
                  ],
                ),
                style: ElevatedButton.styleFrom(
                  primary: Color(0xff22A1FF),

                ),),
            ),
            SizedBox(height: 20,),
            Container(
              height: 50,
              width: 300,
              child: ElevatedButton(onPressed: (){},
                child: Row(
                  children: [
                    // Icon(Icons.friends, color: Colors.black,size: 40,),
                    FaIcon(FontAwesomeIcons.users, color: Colors.black,),
                    Padding(
                      padding: const EdgeInsets.only(left: 20, right: 5, top: 10, bottom: 10),
                      child: Text('Invite Friends ', style: TextStyle(color: Colors.black, fontSize: 25)),
                    ),
                    SizedBox(width: 12,),
                    Icon(Icons.arrow_forward_ios_rounded, color: Colors.black,)
                  ],
                ),
                style: ElevatedButton.styleFrom(
                  primary: Color(0xff22A1FF),

                ),),
            ),
            SizedBox(height: 20,),
            Container(
              height: 50,
              width: 300,
              child: ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => MyContactUs()));
              },
                child: Row(
                  children: [
                    Icon(Icons.phone, color: Colors.black,size: 37,),
                    Padding(
                      padding: const EdgeInsets.only(left: 20, right: 5, top: 10, bottom: 10),
                      child: Text('Contact Us', style: TextStyle(color: Colors.black, fontSize: 25)),
                    ),
                    SizedBox(width: 34,),
                    Icon(Icons.arrow_forward_ios_rounded, color: Colors.black,)
                  ],
                ),
                style: ElevatedButton.styleFrom(
                  primary: Color(0xff22A1FF),

                ),),
            ),
            SizedBox(height: 20,),
            Container(
              height: 50,
              width: 300,
              child: ElevatedButton(onPressed: (){},
                child: Row(
                  children: [
                    Icon(Icons.help, color: Colors.black,size: 40,),
                    Padding(
                      padding: const EdgeInsets.only(left: 20, right: 5, top: 10, bottom: 10),
                      child: Text('Help ', style: TextStyle(color: Colors.black, fontSize: 25)),
                    ),
                    SizedBox(width: 100,),
                    Icon(Icons.arrow_forward_ios_rounded, color: Colors.black,)
                  ],
                ),
                style: ElevatedButton.styleFrom(
                  primary: Color(0xff22A1FF),

                ),),
            ),
            SizedBox(height: 20,),
            Container(
              height: 50,
              width: 300,
              child: ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => MyAboutUs()));
              },
                child: Row(
                  children: [
                    Icon(Icons.perm_device_information_rounded, size: 40,color: Colors.black,),
                    Padding(
                      padding: const EdgeInsets.only(left: 20, right: 5, top: 10, bottom: 10),
                      child: Text('About Us ', style: TextStyle(color: Colors.black, fontSize: 25)),
                    ),
                    SizedBox(width: 48,),
                    Icon(Icons.arrow_forward_ios_rounded, color: Colors.black,)
                  ],
                ),
                style: ElevatedButton.styleFrom(
                  primary: Color(0xff22A1FF),

                ),),
            ),
            SizedBox(height: 40,),
            ElevatedButton(onPressed: (){},
              child: Padding(
                padding: const EdgeInsets.only(left: 20, right: 12, top: 12, bottom: 10),
                child: Text('LOG OUT ', style: TextStyle(color: Colors.white, fontSize: 25)),
              ),
              style: ElevatedButton.styleFrom(
                  primary: Color(0xff0E4771),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))
              ),
            )
          ],
        ),
      ),
    );
  }
}