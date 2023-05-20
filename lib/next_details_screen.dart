
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:findmech/next_details_screen.dart';
import 'package:findmech/bank_details_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class MyNextDetails extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return MyNextDetailsState();
  }

}

class MyNextDetailsState extends State<StatefulWidget>{
  TextEditingController licenseController = TextEditingController();
  TextEditingController gstController = TextEditingController();
  TextEditingController businessHoursController = TextEditingController();
  TextEditingController noOfMechanicsController = TextEditingController();

  bool loading = false;
  final fireStore = FirebaseFirestore.instance.collection('Users');

  String ans = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: SingleChildScrollView(
          reverse: true,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 40.0, bottom: 30.0),
                child: Text('Details', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),),
              ),
              Row(
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 12.0),
                    child: Text('License No.:', style: TextStyle(fontSize: 17),),
                  ),
                  SizedBox(width: 10,),
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
                    child: Text('GST Invoice:', style: TextStyle(fontSize: 17),),
                  ),
                  SizedBox(width: 15,),
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
                    child: Text('Business Hours:', style: TextStyle(fontSize: 17),),
                  ),
                  SizedBox(width: 22,),
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
                    child: Text('No. of mechanics working in your Garage:', style: TextStyle(fontSize: 17),),
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
              Padding(
                padding: const EdgeInsets.only(top: 20.0, bottom: 8.0),
                child: Text('Are you ASE Certified ?', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18)),
              ),

              RadioListTile(
                title: Text("Yes"),
                value: "Yes",
                groupValue: ans,
                onChanged: (value){
                  setState(() {
                    ans = value.toString();
                  });
                  // if(ans == 'yes'){
                  //   Navigator.push(context, MaterialPageRoute(builder: (context) => MyNextDetails()));
                  // }
                },
              ),
              RadioListTile(
                title: Text("No"),
                value: "No",
                groupValue: ans,
                onChanged: (value){
                  setState(() {
                    ans = value.toString();
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
          'licenseNo' : licenseController.text.toString(),
          'gst' : gstController.text.toString(),
          'businessHours' : businessHoursController.text.toString(),
          'noOfMechanics' : noOfMechanicsController.text.toString(),

        }).then((value){

        });

        //   .onError((error, stackTrace){
        //   Utils().toastMessage(error.toString());
        // });
        Navigator.push(context, MaterialPageRoute(builder: (context) => MyBankDetails()));
      }, label: Text('Next')),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
