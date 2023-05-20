
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyAboutUs extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return MyAboutUsState();
  }
}

class MyAboutUsState extends State<StatefulWidget>{

  @override
  Widget build(BuildContext context) {

    return Scaffold(

        appBar: AppBar(
          backgroundColor: Colors.blue,
          // flexibleSpace: Container(
          //   decoration: BoxDecoration(
          //       gradient: LinearGradient(
          //           colors: [
          //             Color(0xff00c6fb), Color(0xff005bea),
          //           ],
          //           begin: FractionalOffset(1.0, 0.0),
          //           end: FractionalOffset(0.0, 1.0),
          //           stops: [0.0, 0.9]
          //       )
          //   ),
          // ),
          title: Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Text('About Us', style: TextStyle(fontSize: 25, color: Colors.black),),
          ),
        ),
        body:Container(
          width: double.infinity,
          height: double.infinity,

          child: Column(
            children: [
              Container(
                child: Image.asset('assets/images/main_icon.png'),
                width: 120,
                height: 120,
              ),
              SizedBox(height: 55,),
              Container(
                  height: 50,
                  width: double.infinity,
                  color: Colors.blue.shade100,
                  child: Row(
                    children: [
                      SizedBox(width: 30,),
                      FaIcon(FontAwesomeIcons.facebook, size: 30,),
                      SizedBox(width: 40,),
                      Text('Like us on Facebook', style: TextStyle(fontSize: 20),)
                    ],
                  )
              ),
              SizedBox(height: 40,),
              Container(
                  height: 50,
                  width: double.infinity,
                  color: Colors.blue.shade100,
                  child: Row(
                    children: [
                      SizedBox(width: 30,),
                      FaIcon(FontAwesomeIcons.instagram, size: 30,),
                      SizedBox(width: 40,),
                      Text('Follow us on Instagram', style: TextStyle(fontSize: 20),)
                    ],
                  )
              ),
              SizedBox(height: 40,),
              Container(
                  height: 50,
                  width: double.infinity,
                  color: Colors.blue.shade100,
                  child: Row(
                    children: [
                      SizedBox(width: 30,),
                      Icon(Icons.file_copy, size: 30,),
                      SizedBox(width: 40,),
                      Text('Terms and Conditions', style: TextStyle(fontSize: 20),)
                    ],
                  )
              ),
              SizedBox(height: 40,),
              Container(
                  height: 50,
                  width: double.infinity,
                  color: Colors.blue.shade100,
                  child: Row(
                    children: [
                      SizedBox(width: 30,),
                      FaIcon(FontAwesomeIcons.lock, size: 30,),
                      SizedBox(width: 40,),
                      Text('Privacy Policy', style: TextStyle(fontSize: 20),)
                    ],
                  )
              ),
              SizedBox(height: 40,),
            ],
          ),
        )
    );
  }

}