import "package:flutter/material.dart";
import 'package:flutter/services.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import 'homea.dart';


class MyApp6 extends StatelessWidget {
  const MyApp6({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          elevation: 0,
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
            ), //IconButton//IconButton
          ], //<Widget>[]
          leading: IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => MyHomeA()));},
          ),
          systemOverlayStyle: SystemUiOverlayStyle.light,
        ),
        body: const MyStatefulWidget(),
      ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({super.key});

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {

  double fullRating=0;
  TextEditingController textController = TextEditingController();
  String displayText = "Write feedback";
  @override
  Widget build(BuildContext context) {
    final ButtonStyle style =
    ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20));

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Stack(
          children: [
            new Container(
              width: double.maxFinite,
              height: double.maxFinite,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.blue.withOpacity(0.8),
                      Colors.white.withOpacity(0.8)
                    ]),
              ),
            ),
            Container(
              height: 90,
              width: 1000,
              color: Color(-8816906),
              child: Row(children: <Widget>[
                SizedBox(width: 40),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Liked the Service! \nGive Feedback',
                    style: TextStyle(fontSize: 25),
                  ),
                )
              ]),
            ),
            Center(
              //SizedBox Widget
              child: SizedBox(
                  width: 350.0,
                  height: 400.0,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      gradient: LinearGradient(
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter,
                          colors: [
                            Colors.blue.withOpacity(1.0),
                            Colors.white.withOpacity(0.8)
                          ]),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        SizedBox(height: 50),
                        Center(
                          child: Text(
                              'Service Provided',style:TextStyle(fontSize: 18)
                          ),
                        ),
                        SizedBox(height: 20),
                        Center(
                          child: RatingBar.builder(
                            initialRating: 0,
                            minRating: 1,
                            unratedColor: Colors.grey,
                            itemCount: 5,
                            itemSize: 50,
                            itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                            updateOnDrag: true,
                            itemBuilder: (context, index) => Icon(
                              Icons.star,
                              color: Colors.amber,
                            ),
                            onRatingUpdate: (ratingvalue){
                              setState(() {
                                fullRating= ratingvalue;
                              });
                            },
                          ),
                        ),
                        SizedBox(height: 20),
                        Center(
                          child: Text(
                              'Price',style:TextStyle(fontSize: 18)
                          ),
                        ),
                        SizedBox(height: 20),
                        Center(
                          child: RatingBar.builder(
                            initialRating: 0,
                            minRating: 1,
                            unratedColor: Colors.grey,
                            itemCount: 5,
                            itemSize: 50,
                            itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                            updateOnDrag: true,
                            itemBuilder: (context, index) => Icon(
                              Icons.star,
                              color: Colors.amber,
                            ),
                            onRatingUpdate: (ratingvalue){
                              setState(() {
                                fullRating= ratingvalue;
                              });
                            },
                          ),
                        ),
                        SizedBox(height: 20,),
                      ],
                    ),
                  ) //Card
              ), //SizedBox
            ),
          ],
        ),
      ),
    );
  }
}