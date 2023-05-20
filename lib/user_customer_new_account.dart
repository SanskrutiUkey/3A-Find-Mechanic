import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:findmech/next_details_screen.dart';
import 'package:findmech/bank_details_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import 'customerhome.dart';
import 'home_screen.dart';

class registerScreen extends StatefulWidget {
  const registerScreen({Key? key}) : super(key: key);

  @override
  State<registerScreen> createState() => _registerScreenState();
}

class _registerScreenState extends State<registerScreen> {
  _registerScreenState() {
    _selectedVal1 = lst[0];
    _selectedVal2 = Manufacturer[0];
    _selectedVal3 = Model[0];
    _selectedVal4 = vehicleT[0];
  }

  bool loading = false;
  bool isChecked = false;
  final fullnamecontroller = TextEditingController();
  final passwordcontroller = TextEditingController();
  final addresscontroller = TextEditingController();
  final agecontroller = TextEditingController();
  final pincodecontroller = TextEditingController();

  final fireStore = FirebaseFirestore.instance.collection('Customers');
  final lst = ['Male', 'Female', 'Others'];
  List<String> Manufacturer = [
    'Honda',
    'HeroMotoCorp',
    'HeroHonda',
    'TVS',
    'Bajaj',
    'Yamaha',
    'Suzuki',
    'Mahindra'
  ];

  final Model = [
    'Acheiver',
    'Ambition',
    'CBZ',
    'CBZ Star',
    'CBZ X Treme',
    'CD 10',
    'Passion',
    'Passion Plus',
    'Splendor',
    'Splendor Plus',
    'Pleasure'
  ];
  final vehicleT = ["Car", "bike", "scooty", "Tempo"];
  String? _selectedVal1 = "Male";
  String? _selectedVal2 = "Honda";
  String? _selectedVal3 = "Achiever";
  String? _selectedVal4 = "Car";

  @override
  Widget build(BuildContext context) {
    final fullnamefield = TextFormField(
      autofocus: false,
      controller: fullnamecontroller,
      keyboardType: TextInputType.name,
      onSaved: (value) {
        fullnamecontroller.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
          prefixIcon: const Icon(Icons.person),
          contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: "Full name",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          )),
    );

    final passwordfield = TextFormField(
      autofocus: false,
      controller: passwordcontroller,
      obscureText: true,
      onSaved: (value) {
        passwordcontroller.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
          prefixIcon: const Icon(Icons.password),
          contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: "Password",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          )),
    );
    final addressfield = TextFormField(
      autofocus: false,
      controller: addresscontroller,
      keyboardType: TextInputType.streetAddress,
      onSaved: (value) {
        addresscontroller.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
          prefixIcon: const Icon(Icons.home),
          contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: "Adress",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          )),
    );

    final agefield = TextFormField(
      autofocus: false,
      controller: agecontroller,
      keyboardType: TextInputType.number,
      onSaved: (value) {
        agecontroller.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
          prefixIcon: const Icon(Icons.date_range),
          contentPadding: const EdgeInsets.fromLTRB(30, 15, 30, 15),
          hintText: "Age",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          )),
    );

    final pincodefield = TextFormField(
      autofocus: false,
      controller: pincodecontroller,
      keyboardType: TextInputType.name,
      onSaved: (value) {
        pincodecontroller.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
          prefixIcon: const Icon(Icons.map),
          contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: "Pincode",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          )),
    );
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            color: Colors.white,
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.fromLTRB(20, 50, 20, 0),
                  child: Text('Create New Account',
                      style:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 25)),
                ),
                SizedBox(height: 20,),
                const Text(
                    'We’re happy to have you.To use our services, you should create an account first',
                    textAlign: TextAlign.center,
                    style:
                    TextStyle(fontSize: 10, fontWeight: FontWeight.normal)),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Form(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        const SizedBox(height: 35),
                        fullnamefield,
                        const SizedBox(height: 35),
                        passwordfield,
                        const SizedBox(height: 35),
                        agefield,
                        const SizedBox(height: 10),
                        DropdownButtonFormField(
                          value: _selectedVal1,
                          items: lst
                              .map((e) =>
                              DropdownMenuItem(
                                child: Text(e),
                                value: e,
                              ))
                              .toList(),
                          onChanged: (val) {
                            setState(() {
                              _selectedVal1 = val as String;
                            });
                          },
                          icon: const Icon(
                            Icons.arrow_drop_down_circle,
                          ),
                          decoration: const InputDecoration(
                              labelText: "Gender",
                              border: UnderlineInputBorder()),
                        ),
                        const SizedBox(height: 35),
                        addressfield,
                        const SizedBox(height: 35),
                        pincodefield,
                        const SizedBox(height: 10),
                        DropdownButtonFormField(
                          value: _selectedVal4,
                          items: vehicleT
                              .map((e) =>
                              DropdownMenuItem(
                                child: Text(e),
                                value: e,
                              ))
                              .toList(),
                          onChanged: (val) {
                            setState(() {
                              _selectedVal4 = val as String;
                            });
                          },
                          icon: const Icon(
                            Icons.arrow_drop_down_circle,
                          ),
                          decoration: const InputDecoration(
                              labelText: "Select vehicle type",
                              border: UnderlineInputBorder()),
                        ),

                        const SizedBox(
                          height: 35,
                        ),
                        DropdownButtonFormField(
                          value: _selectedVal2,
                          items: Manufacturer.map((e) =>
                              DropdownMenuItem(
                                child: Text(e),
                                value: e,
                              )).toList(),
                          onChanged: (val) {
                            setState(() {
                              _selectedVal2 = val as String;
                            });
                          },
                          icon: const Icon(
                            Icons.arrow_drop_down_circle,
                          ),
                          decoration: const InputDecoration(
                              labelText: "Choose Manufacturer",
                              border: UnderlineInputBorder()),
                        ),
                        const SizedBox(height: 10),
                        DropdownButtonFormField(
                          value: _selectedVal3,
                          items: Model.map((e) =>
                              DropdownMenuItem(
                                child: Text(e),
                                value: e,
                              )).toList(),
                          onChanged: (val) {
                            setState(() {
                              _selectedVal3 = val as String;
                            });
                          },
                          icon: const Icon(
                            Icons.arrow_drop_down_circle,
                          ),
                          decoration: const InputDecoration(
                              labelText: "Select Model",
                              border: UnderlineInputBorder()),
                        ),
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Checkbox(
                                  value: isChecked,
                                  onChanged: (bool? newValue) {
                                    isChecked = newValue!;
                                    setState(() {

                                    });
                                  }),
                              const Text(
                                'I agree to the Terms of Services and privacy policy',
                                style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.normal),
                              ),

                            ],

                          ),
                        ),
                        // SizedBox(height: 10),
                        // SizedBox(height: 10),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(onPressed: (){
        setState(() {
          loading = true;
        });
        String id = DateTime.now().millisecondsSinceEpoch.toString();
        fireStore.doc(id).set({
          'fullnameC' : fullnamecontroller.text.toString(),
          'contactC' : passwordcontroller.text.toString(),
          'addressC' : addresscontroller.text.toString(),
          'pinCodeC' : pincodecontroller.text.toString(),
          'ageC' : agecontroller.text.toString(),
        }).then((value){

        });

        //   .onError((error, stackTrace){
        //   Utils().toastMessage(error.toString());
        // });
        Navigator.push(context, MaterialPageRoute(builder: (context) => MyHomeCostomer()));
      }, label: Text('Submit')),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}