import 'package:flutter/material.dart';

import 'bookingconfirmation.dart';
import 'col.dart';

class AppointScreen extends StatelessWidget {
  // const AppointScreen({super.key}),

  @override
  Widget build(BuildContext context) {
    return Material(
      color: const Color(0xFFD9E4EE),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: 500,
              height: 300,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    "assets/images/download.jpg",
                  ),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
              child: Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                      pcolor.withOpacity(0.9),
                      pcolor.withOpacity(0),
                      pcolor.withOpacity(0),
                    ], begin: Alignment.bottomCenter, end: Alignment.topCenter)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding:
                      const EdgeInsets.only(top: 30, left: 10, right: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: () {},
                            child: Container(
                              margin: const EdgeInsets.all(8.0),
                              height: 45,
                              width: 45,
                              decoration: BoxDecoration(
                                  color: const Color(0xFFF2F8FF),
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: [
                                    const BoxShadow(
                                        color: const Color(0xFF94989B),
                                        blurRadius: 3,
                                        spreadRadius: 2)
                                  ]),
                              child: const Center(
                                  child: Icon(
                                    Icons.arrow_back,
                                    color: pcolor,
                                    size: 28,
                                  )),
                            ),
                          )
                        ],
                      ),
                    ),
                    // SizedBox(
                    //   height: 80,
                    //   child: Row(
                    //     mainAxisAlignment: MainAxisAlignment.spaceAround,
                    //     crossAxisAlignment: CrossAxisAlignment.end,
                    //     children: [
                    //       const Text(
                    //         "Appointment",
                    //         style: TextStyle(
                    //             fontSize: 20, fontWeight: FontWeight.bold),
                    //       ),
                    //       const SizedBox(
                    //         height: 8,
                    //       ),
                    //       Text("Amazing")
                    //     ],
                    //   ),
                    // )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: 10,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: const Text(
                      "Schedule Appointment",
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: bcolor,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      height: 15,
                    ),
                  ),
                  Center(
                    child: const Text(
                      "BOOK DATE",
                      style: TextStyle(
                        fontSize: 18,
                        // color: bcolor.withOpacity(0.6),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Container(
                    height: 70,
                    child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: 6,
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            Container(
                              margin: EdgeInsets.symmetric(
                                  horizontal: 8, vertical: 5),
                              padding: EdgeInsets.symmetric(
                                  vertical: 5, horizontal: 25),
                              decoration: BoxDecoration(
                                  color:
                                  index == 1 ? pcolor : Color(0xFFFAF8F8),
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: [
                                    BoxShadow(
                                      color: pcolor,
                                      blurRadius: 3,
                                      spreadRadius: 2,
                                    ),
                                  ]),
                              child: Column(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "${index + 8}",
                                    style: TextStyle(
                                        color: index == 1
                                            ? wcolor
                                            : bcolor.withOpacity(0.6)),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    "DEC",
                                    style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold,
                                        color: index == 1
                                            ? wcolor
                                            : bcolor.withOpacity(0.6)),
                                  )
                                ],
                              ),
                            ),
                          ],
                        );
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      height: 5,
                    ),
                  ),
                  Center(
                    child: Text(
                      "BOOK TIME",
                      style: TextStyle(
                        fontSize: 18,
                        // color: bcolor.withOpacity(0.6),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Container(
                    height: 60,
                    child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: 6,
                      itemBuilder: (context, Index) {
                        return Container(
                          margin:
                          EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                          padding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                          decoration: BoxDecoration(
                              color: Index == 2 ? pcolor : Color(0xFFF2F8FF),
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 3,
                                  spreadRadius: 2,
                                ),
                              ]),
                          child: Center(
                            child: Text(
                              "${Index + 8}:00 AM",
                              style: TextStyle(
                                fontSize: 18,
                                color: Index == 2
                                    ? wcolor
                                    : bcolor.withOpacity(0.6),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(50.0),
              child: Center(
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => SuccessBooking()));
                      }, child: Text("Book a Service",style: TextStyle(fontSize: 20),))),
            )
          ],
        ),
      ),
    );
  }
}