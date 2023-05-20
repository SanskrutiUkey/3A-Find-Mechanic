
import 'package:findmech/user_invoice.dart';
import 'package:flutter/material.dart';

class BookingConfirmation extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return BookingConfirmationScreen();
  }
  
}

class BookingConfirmationScreen extends State<StatefulWidget>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Booking Confirmation'),
      ),
      
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset('assets/images/google_map1.jpg'),
          SizedBox(height: 40,),
          Row(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 38.0),
                child: Text('Name', style: TextStyle(fontSize: 25),),
              ),
              SizedBox(width: 20,),
              Text('John Parekh', style: TextStyle(fontSize: 25)),
            ],
          ),
          SizedBox(height: 10,),
          Row(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 36.0),
                child: Text('Time', style: TextStyle(fontSize: 25)),
              ),
              SizedBox(width: 20,),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Text('12 pm',style: TextStyle(fontSize: 25)),
              ),
            ],
          ),
          SizedBox(height: 10,),
          Row(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
                Padding(
                  padding: const EdgeInsets.only(left: 38.0),
                  child: Text('Status',style: TextStyle(fontSize: 25)),
                ),

              SizedBox(width: 15,),
              Text('Ongoing Service',style: TextStyle(fontSize: 25)),
            ],
          ),
          SizedBox(height: 10,),
          Row(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 38.0),
                child: Text('Location',style: TextStyle(fontSize: 25)),
              ),
              SizedBox(width: 20,),
              Text('Khapri',style: TextStyle(fontSize: 25)),
            ],
          ),
          SizedBox(height: 30,),
          ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => UserInvoice()));
          }, child: Text('Booking Confirmed', style: TextStyle(fontSize: 20),),)
        ],
      ),
    );
  }
  
}