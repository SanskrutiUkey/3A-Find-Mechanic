import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:findmech/next_details_screen.dart';
import 'package:findmech/bank_details_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import 'home_screen.dart';

class MyBankDetails extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return MyBankDetailsState();
  }
}

class MyBankDetailsState extends State<StatefulWidget>{
  TextEditingController nameOfBankController = TextEditingController();
  TextEditingController branchNameController = TextEditingController();
  TextEditingController accountNoController = TextEditingController();
  TextEditingController ifscCodeController = TextEditingController();

  bool loading = false;
  final fireStore = FirebaseFirestore.instance.collection('Users');

  String mode = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Color(0xff87cefa),
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
                padding: const EdgeInsets.only(top: 40.0, bottom: 30.0),
                child: Text('Bank Details', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),),
              ),
              Row(
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 12.0),
                    child: Text('Name of Bank', style: TextStyle(fontSize: 17),),
                  ),
                  SizedBox(width: 10,),
                  Expanded(
                    child: TextField(
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
                    child: Text('Branch Name', style: TextStyle(fontSize: 17),),
                  ),
                  SizedBox(width: 15,),
                  Expanded(
                    child: TextField(
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
                    child: Text('Account No.', style: TextStyle(fontSize: 17),),
                  ),
                  SizedBox(width: 22,),
                  Expanded(
                    child: TextField(
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
                    child: Text('IFSC Code', style: TextStyle(fontSize: 17),),
                  ),
                  SizedBox(width: 36,),
                  Expanded(
                    child: TextField(
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
                padding: const EdgeInsets.only(top: 20.0, bottom: 8.0),
                child: Text('Mode of Payment Accepted ?', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18)),
              ),

              RadioListTile(
                title: Text("UPI ID / VPA"),
                value: "UPI ID / VPA",
                groupValue: mode,
                onChanged: (value){
                  setState(() {
                    mode = value.toString();
                  });
                },
              ),
              RadioListTile(
                title: Text("Credit / Debit Card"),
                value: "Credit / Debit Card",
                groupValue: mode,
                onChanged: (value){
                  setState(() {
                    mode = value.toString();
                  });
                },
              ),
              RadioListTile(
                title: Text("Mobile Wallet"),
                value: "Mobile Wallet",
                groupValue: mode,
                onChanged: (value){
                  setState(() {
                    mode = value.toString();
                  });
                },
              ),
              RadioListTile(
                title: Text("Net Banking"),
                value: "Net Banking",
                groupValue: mode,
                onChanged: (value){
                  setState(() {
                    mode = value.toString();
                  });
                },
              ),
              RadioListTile(
                title: Text("Cash"),
                value: "Cash",
                groupValue: mode,
                onChanged: (value){
                  setState(() {
                    mode = value.toString();
                  });
                },
              ),
              Padding(padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom))
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(onPressed: (){
      setState(() {
        loading = true;
      });
      String id = DateTime.now().millisecondsSinceEpoch.toString();
      fireStore.doc(id).set({
        'nameofBank' : nameOfBankController.text.toString(),
        'branchName' : branchNameController.text.toString(),
        'accountNo' : accountNoController.text.toString(),
        'ifscCode' : ifscCodeController.text.toString(),

      }).then((value){

      });
      //   .onError((error, stackTrace){
      //   Utils().toastMessage(error.toString());
      // });
      Navigator.push(context, MaterialPageRoute(builder: (context) => MyHome()));
    }, label: Text('Submit')),
    );
  }

}