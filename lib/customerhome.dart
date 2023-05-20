
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'breakdown.dart';
import 'homea.dart';
import 'maintainance.dart';
import 'my_account.dart';

class MyHomeCostomer extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff17304F),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.notifications),
            onPressed: () {
    showDialog(context: context, builder: (context)
    {
      return Container(
        child: AlertDialog(
          title: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("  No new Notification"),
          ),
        ),
    );},
    );
            },
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
            SizedBox(height: 10,),
            Padding(
              padding: EdgeInsets.fromLTRB(10, 10, 5,10),
              child: Text('Problem with your Vehicle?\nFind the nearest Mechanic!', style: TextStyle(color: Colors.white),),
            ),
            SizedBox(height: 25,),
            Container(
              width: 400,
              height: 200,

              child: Image.asset('assets/images/home.png'),
            ),
            SizedBox(height: 15,),
            Text('Pick a Service',style: TextStyle(fontSize: 20, color: Colors.white),),
            SizedBox(height: 20,),
            Container(
              width: 330,
              height: 310,

              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color(0xffe2d1c3),Color(0xfffdfcfb)],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
                borderRadius: BorderRadius.circular(30),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(height: 20,),
                  ElevatedButton(onPressed: (){

                    Navigator.push(context, MaterialPageRoute(builder: (context) => MyApp1()));

                  },
                    child: Padding(
                      padding: const EdgeInsets.only(left: 25, right: 25, top: 20, bottom: 20),
                      child: Text('Maintainence', style: TextStyle(color: Colors.white,
                          fontWeight: FontWeight.w600, fontSize: 22),),
                    ),
                    style: ElevatedButton.styleFrom(
                        primary: Color(0xff17304F),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))
                    ),),

                  SizedBox(height: 15,),
                  ElevatedButton(onPressed: (){

                    Navigator.push(context, MaterialPageRoute(builder: (context) => breakdownpage()));
                  },
                    child: Padding(
                      padding: const EdgeInsets.only(left: 25, right: 22, top: 20, bottom: 20),
                      child: Text('Breakdown', style: TextStyle(color: Colors.white,
                          fontWeight: FontWeight.w600, fontSize: 22)),
                    ),
                    style: ElevatedButton.styleFrom(
                        primary: Color(0xff17304F),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))
                    ),),
                  SizedBox(height: 30,),


                ],
              ),
            )
          ],
        ),
      ),
    );
  }

}