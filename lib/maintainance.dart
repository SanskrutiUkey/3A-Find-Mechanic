import "package:flutter/material.dart";
import 'package:flutter/services.dart';

import 'appointmentcustomer.dart';
import 'homea.dart';
class MyApp1 extends StatelessWidget {
  const MyApp1({super.key});

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
  final vehicleT = ["Car", "bike", "scooty", "Tempo"];
  String? _selectedVal4 = "Car";
  final Serv = [
    "Battery Jumpstart",
    "",
    "A/C Repairing"
        "Regular Maintainance"
  ];
  String? _selectedVal3 = "Battery Jumpstart";
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
                child: Center(
                    child: Text(
                      'Maintainence Services',
                      style: TextStyle(fontSize: 25),
                    ))),
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
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Text('Select Vehicle',style:TextStyle(fontSize: 18),),
                          SizedBox(height: 10),
                          DropdownButtonFormField(
                            value: _selectedVal4,
                            items: vehicleT
                                .map((e) => DropdownMenuItem(
                              child: Padding(
                                padding: const EdgeInsets.only(left: 20),
                                child: Text(e),
                              ),
                              value: e,
                            ))
                                .toList(),
                            onChanged: (val) {
                              setState(() {
                                _selectedVal4 = val as String;
                              });
                            },
                            icon: const Icon(
                              Icons.arrow_drop_down,
                            ),
                            decoration: InputDecoration(
                                border: UnderlineInputBorder()),
                          ),
                          SizedBox(height: 40),
                          Text('Select Services',style:TextStyle(fontSize: 18),),
                          SizedBox(height: 10),
                          DropdownButtonFormField(
                            value: _selectedVal3,
                            items: Serv.map((e) => DropdownMenuItem(
                              child: Padding(
                                padding: const EdgeInsets.only(left: 20),
                                child: Text(e),
                              ),
                              value: e,
                            )).toList(),
                            onChanged: (val) {
                              setState(() {
                                _selectedVal3 = val as String;
                              });
                            },
                            icon: const Icon(
                              Icons.arrow_drop_down,
                            ),
                            decoration: InputDecoration(
                                border: UnderlineInputBorder()),
                          ),

                          SizedBox(height: 40),
                          ElevatedButton(
                            style: style,
                            onPressed: () {

                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => AppointScreen()),
                              );
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: const Text('Search Nearby \n Mechanic'),
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