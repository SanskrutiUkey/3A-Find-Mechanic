import 'package:findmech/payoption.dart';
import 'package:flutter/material.dart';

class SuccessBooking extends StatefulWidget {
  const SuccessBooking({Key? key}) : super(key: key);

  @override
  State<SuccessBooking> createState() => _SuccessBookingState();
}

class _SuccessBookingState extends State<SuccessBooking> {
  @override

  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(80.0),
        child: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [
                Color(0xff190E45),
                Color(0xff5339A5),
                Color(0xff5E43AE),
              ])),
          child: AppBar(
            elevation: 0,
            backgroundColor: Colors.transparent,
            leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.arrow_back_ios),
            ),
            automaticallyImplyLeading: false,
            title: const Text('Booking Successful'),
            centerTitle: true,
          ),
        ),
      ),
      body: Container(
        height: size.height,
        width: size.width,
        child: Column(children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 10, 30, 0),
                child: Image.asset(
                  'assets/images/check.jpeg',
                  height: 90,
                  width: 90,
                ),
              ),
              const Text(
                ("\nBooking Confirmed\n"),
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 27),
                textAlign: TextAlign.center,
              ),
              const Text(
                  "Your booking is confirmed. Please find the details for your vehicles  appointment below",
                  textAlign: TextAlign.center,
                  softWrap: true,
                  style:
                  TextStyle(fontWeight: FontWeight.normal, fontSize: 13)),
              SizedBox(
                height: 20,
              ),
              Stack(
                children: [
                  Card(
                      elevation: 8,
                      child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            ListTile(
                              leading: Icon(Icons.date_range_outlined),
                              title: Text('Date'),
                              trailing: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  const Text('Monday'),
                                  const Text('24 december 2024'),
                                ],
                              ),
                              dense: false,
                            ),
                          ])),
                ],
              ),

              //sack2
              Stack(
                children: [
                  Card(
                      elevation: 8,
                      child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            ListTile(
                              leading: Icon(Icons.gps_fixed_outlined),
                              title: Text('Loaction'),
                              trailing: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  const Text('Plot no 23 gular chowk'),
                                  const Text('Near IT park, Nagpur'),
                                ],
                              ),
                              dense: false,
                            ),
                          ])),
                ],
              ),
              //stack3
              Stack(
                children: [
                  Card(
                      elevation: 8,
                      child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            ListTile(
                              leading: Icon(Icons.lock_clock),
                              title: Text('Time'),
                              trailing: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  const Text('12:30 AM'),
                                ],
                              ),
                              dense: false,
                            ),
                          ])),

                ],
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: ElevatedButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => MyApp4()));
                }, child: Text('Processed to pay')),
              )

            ],
          ),

        ]),

      ),

    );
  }
}