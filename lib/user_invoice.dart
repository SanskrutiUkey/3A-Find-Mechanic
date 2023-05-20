import 'package:flutter/material.dart';
import 'package:findmech/last_confirm.dart';
class UserInvoice extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return UserInvoiceScreen();
  }

}

class UserInvoiceScreen extends State<StatefulWidget> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text('Invoice'),
      ),
      body:Container(
        width:double.infinity,
        height:double.infinity,

        decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xff0484FA), Color(0xffEEF7FF)],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            )
        ),

        child: Container(
          width:100,
          height:100,
          color:Colors.lightBlueAccent,
          child:Column(
              children:[
                SizedBox(height: 50),
                Text("Raju Automobiles", style: TextStyle(fontSize: 28,color:Colors.black),),
                SizedBox(height: 20),
                Text("Invoice", style: TextStyle(fontSize: 24, color:Colors.black),),
                SizedBox(height: 20),
                Container(
                  child:Row(
                    children:[
                      SizedBox(height: 35,width: 35,),
                      Text("List of items ", style: TextStyle(fontSize: 20,color:Colors.black),),
                      SizedBox(width: 110),
                      Text("Amount", style: TextStyle(fontSize: 20,color:Colors.black),),
                      SizedBox(height: 20),],),

                ),
                Container(
                  child:Row(
                      children:[
                        SizedBox(height: 35,width: 35,),

                        SizedBox(height: 20,),
                        Container(width:150,
                          height:40,
                          margin: EdgeInsets.only(top:10, bottom: 10, left:0,),
                          child: TextField(
                            keyboardType:TextInputType.text,
                            decoration:InputDecoration(
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(1),
                                  borderSide: BorderSide(
                                    color: Colors.blue,
                                    width:2,
                                  ),
                                ),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(1),
                                    borderSide: BorderSide(
                                      color:Colors.black,
                                      width:1,
                                    )
                                )
                            ),
                          ),



                        ),
                        SizedBox(width: 70,),

                        Container(width:80,
                          height:40,
                          margin: EdgeInsets.only(top:10, bottom: 10, left:0,),
                          child: TextField(
                            keyboardType:TextInputType.text,
                            decoration:InputDecoration(
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(1),
                                  borderSide: BorderSide(
                                    color: Colors.blue,
                                    width:2,
                                  ),
                                ),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(1),
                                    borderSide: BorderSide(
                                      color:Colors.black,
                                      width:1,
                                    )
                                )
                            ),
                          ),
                        ),
                        SizedBox(height: 20,),
                      ]
                  ),
                ),


                Container(
                  child:Row(
                      children:[
                        SizedBox(height: 35,width: 35,),

                        SizedBox(height: 15,),
                        Container(width:150,
                          height:40,
                          margin: EdgeInsets.only(top:10, bottom: 10, left:0,),
                          child: TextField(
                            keyboardType:TextInputType.text,
                            decoration:InputDecoration(
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(1),
                                  borderSide: BorderSide(
                                    color: Colors.blue,
                                    width:2,
                                  ),
                                ),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(1),
                                    borderSide: BorderSide(
                                      color:Colors.black,
                                      width:1,
                                    )
                                )
                            ),
                          ),



                        ),
                        SizedBox(width: 70,),

                        Container(width:80,
                          height:40,
                          margin: EdgeInsets.only(top:10, bottom: 10, left:0,),
                          child: TextField(
                            keyboardType:TextInputType.text,
                            decoration:InputDecoration(
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(1),
                                  borderSide: BorderSide(
                                    color: Colors.blue,
                                    width:2,
                                  ),
                                ),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(1),
                                    borderSide: BorderSide(
                                      color:Colors.black,
                                      width:1,
                                    )
                                )
                            ),
                          ),
                        ),
                        SizedBox(height: 15,),
                      ]
                  ),
                ),



                SizedBox(height: 15),

                Container(
                  child:Row(
                      children:[

                        SizedBox(height: 35,width: 50,),
                        Text("Total", style: TextStyle(fontSize: 25,color:Colors.black, fontWeight:FontWeight.bold),),
                        SizedBox(width: 150),
                        SizedBox(height: 20,),
                        Container(width:80,
                          height:40,
                          margin: EdgeInsets.only(top:10, bottom: 10, left:0,),
                          child: TextField(
                            keyboardType:TextInputType.text,
                            decoration:InputDecoration(
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(1),
                                  borderSide: BorderSide(
                                    color: Colors.blue,
                                    width:2,
                                  ),
                                ),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(1),
                                    borderSide: BorderSide(
                                      color:Colors.black,
                                      width:1,
                                    )
                                )
                            ),
                          ),
                        ),
                        SizedBox(height: 20,),
                      ]

                  ),
                ),
                SizedBox(height: 15,),

                ElevatedButton( child: Text("Payment Request", style: TextStyle(fontSize: 23,color:Colors.black),),
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => MyPayment()));
                  },
                ),

              ]
          ),
        ),


      ), // This trailing comma makes auto-formatting nicer for build methods.
    );

  }
}