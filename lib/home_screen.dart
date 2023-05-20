
import 'package:findmech/mechanic%20schedule.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'homea.dart';
import 'main.dart';
import 'mechaniclist1.dart';
import 'my_account.dart';

class MyHome extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff17304F),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.notifications),
            onPressed: () {},
          ), //IconButton
        ], //<Widget>[]
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {

            Navigator.push(context, MaterialPageRoute(builder: (context) => MyHomeA()));
          },
        ),
        systemOverlayStyle: SystemUiOverlayStyle.light,
      ),
          // leading: Icon(Icons.notifications_none_rounded)

      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Color(0xff17304F),


        child: Column(
          children: [
            SizedBox(height: 20,),
            Text('Hello Jack!!',style: TextStyle(fontSize: 25, color: Colors.white),),
            SizedBox(height: 35,),
            Container(
                width: 400,
                height: 200,

              child: Image.asset('assets/images/home.png'),
            ),
            SizedBox(height: 15,),
            Text('SERVICES',style: TextStyle(fontSize: 25, color: Colors.white),),
            SizedBox(height: 10,),
            Container(
              width: 330,
              height: 330,

              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color(0xffe2d1c3),Color(0xfffdfcfb)],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
                borderRadius: BorderRadius.circular(30),
              ),
              child: Column(
                children: [
                  SizedBox(height: 60,),
                  ElevatedButton(onPressed: (){

                    Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
                  },
                    child: Padding(
                    padding: const EdgeInsets.only(left: 25, right: 25, top: 20, bottom: 20),
                    child: Text('Mechanic List', style: TextStyle(color: Colors.white,
                        fontWeight: FontWeight.w600, fontSize: 22),),
                  ),
                    style: ElevatedButton.styleFrom(
                        primary: Color(0xff17304F),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))
                    ),),

                  SizedBox(height: 30,),
                  ElevatedButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => MyApp42()));
                  },
                    child: Padding(
                    padding: const EdgeInsets.only(left: 25, right: 22, top: 20, bottom: 20),
                    child: Text('My Schedule ', style: TextStyle(color: Colors.white,
                        fontWeight: FontWeight.w600, fontSize: 22)),
                  ),
                    style: ElevatedButton.styleFrom(
                        primary: Color(0xff17304F),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))
                    ),),


                ],
              ),
            )
          ],
        ),
      ),
    );
  }

}