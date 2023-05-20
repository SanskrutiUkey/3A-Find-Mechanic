
import 'package:findmech/user_booking_confirmation.dart';
import 'package:findmech/user_current_location.dart';
import 'package:flutter/material.dart';

class MyApp42 extends StatelessWidget {
  const MyApp42({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'mechanic schedule',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home:MyHomePage(title: '',),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});



  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        title: Text(widget.title),
      ),
      body:Container(
        width:double.infinity,
        height:double.infinity,

        decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xff87cefa), Color(0xfffff1eb)],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            )
        ),
        child:Column( crossAxisAlignment: CrossAxisAlignment.center,
            children:[
              SizedBox(height: 20),
              Text("Ongoing Services", style: TextStyle(fontSize: 30,color:Colors.black, fontWeight:FontWeight.bold), ),
              SizedBox(height: 15,),
              Text("Breakdown Services", style: TextStyle(fontSize: 25, color:Colors.black, fontWeight:FontWeight.bold),),
              SizedBox(height: 12,),
              Text("Flat tyre puncture", style: TextStyle(fontSize: 20, color:Colors.black, fontWeight:FontWeight.bold),),
              SizedBox(height: 4,),
              Text("Done by John Parkh", style: TextStyle(fontSize: 18, color:Colors.black),),

              SizedBox(height: 18,),
              Text("Maintenance Services", style: TextStyle(fontSize: 25,color:Colors.black, fontWeight:FontWeight.bold),),
              SizedBox(height: 12,),
              Text("AC Services", style: TextStyle(fontSize: 20, color:Colors.black, fontWeight:FontWeight.bold),),
              SizedBox(height: 4,),
              Text("Done by John Parkh", style: TextStyle(fontSize: 18, color:Colors.black),),

              SizedBox(height: 20,),
              Text("Recent Services", style: TextStyle(fontSize: 30,color:Colors.black, fontWeight:FontWeight.bold),),
              SizedBox(height: 20,),
              Text("Breakdown Services", style: TextStyle(fontSize: 25,color:Colors.black, fontWeight:FontWeight.bold),),
              SizedBox(height: 20,),
              Text("Car Door glass replacement", style: TextStyle(fontSize: 20, color:Colors.black,fontWeight:FontWeight.bold),),
              SizedBox(height: 5,),
              Text("Done by John Parkh", style: TextStyle(fontSize: 18, color:Colors.black),),
              SizedBox(height: 5,),
              Text("Battery Jumpstart", style: TextStyle(fontSize: 20, color:Colors.black,fontWeight:FontWeight.bold),),
              SizedBox(height: 5,),
              Text("Done by John Parkh", style: TextStyle(fontSize: 18, color:Colors.black),),
              SizedBox(height: 5,),

              SizedBox(height: 20,),
              Text("Maintenance Services", style: TextStyle(fontSize: 25,color:Colors.black, fontWeight:FontWeight.bold),),
              SizedBox(height: 20,),
              Text("Car Washing", style: TextStyle(fontSize: 20, color:Colors.black, fontWeight:FontWeight.bold),),
              SizedBox(height: 5,),
              Text("Done by John Parkh", style: TextStyle(fontSize: 18, color:Colors.black),),
              SizedBox(height: 5,),

              ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => UserLocation()));
              }, child: Text('Booking Confirmation'))
            ]
        ),
      ),
    );// This trailing comma makes auto-formatting nicer for build methods
  }
}