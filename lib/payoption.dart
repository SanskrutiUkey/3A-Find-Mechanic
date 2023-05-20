import 'package:findmech/feedback.dart';
import 'package:findmech/select%20app%20upi.dart';
import "package:flutter/material.dart";
import 'package:flutter/services.dart';

import 'card payement.dart';
import 'homea.dart';



class MyApp4 extends StatelessWidget {
  const MyApp4({super.key});

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
              height: 60,
              width: 1000,
              color: Color(-8816906),
              child:Row(
                  children: <Widget>[
                    SizedBox(width: 40),
                    Text(
                      'Choose Payement Method \nTotal',
                      style: TextStyle(fontSize: 25),
                    )]),),
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
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          ElevatedButton(
                            style: style,
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => MyApp11()),
                              );
                            },
                            child: Padding(
                              padding: const EdgeInsets.only(left: 70, right: 70, top:20, bottom: 20),
                              child: const Text('Select UPI App'),
                            ),
                          ),
                          ElevatedButton(
                            style: style,
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => MySample()),
                              );
                            },
                            child: Padding(
                              padding: const EdgeInsets.only(left: 38, right: 38, top:20, bottom: 20),
                              child: const Text('Add Credit/Debit Card'),
                            ),
                          ),
                          ElevatedButton(
                            style: style,
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => MyApp6()),
                              );
                            },
                            child: Padding(
                              padding: const EdgeInsets.only(left: 81, right: 81, top:20, bottom: 20),
                              child: const Text('Pay by Cash'),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ) //Card
              ), //SizedBox
            ), //Center
          ],
        ),
      ),
    );
  }
}