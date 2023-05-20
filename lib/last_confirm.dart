import 'package:flutter/material.dart';


class MyPayment extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return MyPaymentScreen();
  }
}
class MyPaymentScreen extends State<StatefulWidget> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text('Payment Sucessful'),
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


        child: Container(

          // color:Colors.lightBlueAccent,


          child:Column(
              children:[
                Container(
                    height: 300,
                    width: 300,
                    child: Image.asset('assets/images/download.jpg')),

                SizedBox(height: 10,),
                Text("Successful Payment", style: TextStyle(fontSize: 25,color:Colors.black),),
                SizedBox(
                  height: 10,
                ),
                Text("Amount Paid Rs 5000", style: TextStyle(fontSize: 20, color:Colors.black),),
                SizedBox(
                  height: 10,
                ),

                Text("Paid by ", style: TextStyle(fontSize: 20,color:Colors.black),),

                TextButton( child: Text("Paytm", style:TextStyle(fontSize: 15, color: Colors.blue),),
                  onPressed: (){
                    print('confirm button tapped');
                  },
                ),
              ]
          ),
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );

  }
}