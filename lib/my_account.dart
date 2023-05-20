import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:findmech/account_tile.dart';
import 'package:flutter/material.dart';

class MyAccount extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return MyAccountScreen();
  }
  
}

class MyAccountScreen extends State<StatefulWidget>{

  List<Mechanic> info = [];
  @override
  void initState(){
    fetchRecords();
    super.initState();
  }

  fetchRecords() async{
    var records = await FirebaseFirestore.instance.collection('Users').get();
  }

  mapRecords(QuerySnapshot<Map<String, dynamic>> records){
    var _list = records.docs.map((item) => Mechanic(id: item.id, nameofgarage: item['nameofgarage'], name: item['name'], contact: item['conatct'],
        address: item['address'], pinCode: item['pinCode'])).toList();

    setState(() {
      info = _list;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Account'),
      ),
      body: ListView.separated(itemBuilder: (context, index) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(info[index].nameofgarage, style: TextStyle(fontSize: 26),),
              Text(info[index].name),
              Text(info[index].contact),
              Text(info[index].address),
              Text(info[index].pinCode),
            ]
          );
        },
        itemCount: info.length,
        separatorBuilder: (context, index) {
          return Divider(height: 100, thickness: 5);
        },
      ),
    );
  }
  
}

