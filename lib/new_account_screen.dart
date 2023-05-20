import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:findmech/next_details_screen.dart';
import 'package:findmech/bank_details_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class MyNewAccount extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return MyNewAccountState();
  }
}


class MyNewAccountState extends State<StatefulWidget>{
  TextEditingController nameController = TextEditingController();
  TextEditingController contactController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController pinCodeController = TextEditingController();
  TextEditingController ageController = TextEditingController();
  TextEditingController nameOfGarageController = TextEditingController();
  TextEditingController addressOfGarageController = TextEditingController();

  bool loading = false;
  final fireStore = FirebaseFirestore.instance.collection('Users');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text('Create New Account', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),),
      ),
      body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xff87cefa), Color(0xfffff1eb)],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                // stops: [0.0, 0.9]
              )
          ),
          child: SingleChildScrollView(
            reverse: true,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 30.0, bottom: 30.0),
                  child: Text('Garage Owner Details', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),),
                ),
                Row(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 12.0),
                      child: Text('Full Name:', style: TextStyle(fontSize: 17),),
                    ),
                    SizedBox(width: 10,),
                    Expanded(
                      child: TextField(
                        controller: nameController,
                        style: TextStyle(fontSize: 18),
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(1.0),
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                    SizedBox(width: 5,),
                  ],
                ),
                SizedBox(height: 10,),
                Row(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Text('Contact No.:', style: TextStyle(fontSize: 17),),
                    ),
                    SizedBox(width: 10,),
                    Expanded(
                      child: TextField(
                        controller: contactController,
                        style: TextStyle(fontSize: 18),
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(1.0),
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                    SizedBox(width: 5,),
                  ],
                ),
                SizedBox(height: 10,),
                Row(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 12.0),
                      child: Text('Address:', style: TextStyle(fontSize: 17),),
                    ),
                    SizedBox(width: 28,),
                    Expanded(
                      child: TextField(
                        controller: addressController,
                        style: TextStyle(fontSize: 18),
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(1.0),
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                    SizedBox(width: 5,),
                  ],
                ),
                SizedBox(height: 10,),
                Row(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 12.0),
                      child: Text('Pin Code:', style: TextStyle(fontSize: 17),),
                    ),
                    SizedBox(width: 25,),
                    Container(
                      width:120,
                      child: TextField(
                      controller: pinCodeController,
                        style: TextStyle(fontSize: 18),
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(1.0),
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                    SizedBox(width: 15,),
                    Padding(
                      padding: const EdgeInsets.only(left: 12.0),
                      child: Text('Age:', style: TextStyle(fontSize: 17),),
                    ),
                    SizedBox(width: 15,),
                    Container(
                      width: 60,
                      child: TextField(
                        controller: ageController,
                        style: TextStyle(fontSize: 18),
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(1.0),
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                    SizedBox(width: 5,),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 40.0, bottom: 30.0),
                  child: Text('Garage Details', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20)),
                ),
                Row(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 12.0),
                      child: Text('Name of Garage:', style: TextStyle(fontSize: 17),),
                    ),
                    SizedBox(width: 10,),
                    Expanded(
                      child: TextField(
                        controller: nameOfGarageController,
                        style: TextStyle(fontSize: 18),
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(1.0),
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                    SizedBox(width: 5,),
                  ],
                ),
                SizedBox(height: 10,),
                Row(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Text('Address of Garage:', style: TextStyle(fontSize: 17),),
                    ),
                    SizedBox(width: 10,),
                    Expanded(
                      child: TextField(
                        controller: addressOfGarageController,
                        style: TextStyle(fontSize: 18),
                        // keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(1.0),
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                    SizedBox(width: 5,),
                  ],
                ),
                SizedBox(height: 10,),
                // Row(
                //   // mainAxisAlignment: MainAxisAlignment.center,
                //   children: [
                //     Padding(
                //       padding: const EdgeInsets.only(left: 12.0),
                //       child: Text('Pin Code:', style: TextStyle(fontSize: 17),),
                //     ),
                //     SizedBox(width: 25,),
                //     Container(
                //       width:120,
                //       child: TextField(
                //         style: TextStyle(fontSize: 18),
                //         keyboardType: TextInputType.number,
                //         decoration: InputDecoration(
                //           contentPadding: EdgeInsets.all(1.0),
                //           border: OutlineInputBorder(),
                //         ),
                //       ),
                //     ),
                //     SizedBox(width: 5,),
                //   ],
                // ),
                Padding(padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom))
              ]
            ),
          ),
        ),
      floatingActionButton: FloatingActionButton.extended(onPressed: (){
        setState(() {
          loading = true;
        });
        String id = DateTime.now().millisecondsSinceEpoch.toString();
        fireStore.doc(id).set({
          'nameO' : nameController.text.toString(),
          'contactO' : contactController.text.toString(),
          'addressO' : addressController.text.toString(),
          'pinCodeO' : pinCodeController.text.toString(),
          'ageO' : ageController.text.toString(),
          'nameG' : nameOfGarageController.text.toString(),
          'addressG': addressOfGarageController.text.toString(),
        }).then((value){

        });

        //   .onError((error, stackTrace){
        //   Utils().toastMessage(error.toString());
        // });
        Navigator.push(context, MaterialPageRoute(builder: (context) => MyNextDetails()));
      }, label: Text('Next')),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
  
}