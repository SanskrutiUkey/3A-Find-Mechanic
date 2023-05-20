
import 'package:findmech/bank_details_screen.dart';
import 'package:findmech/new_account_screen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class MyLoginScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return MyLoginScreenState();
  }
}

class MyLoginScreenState extends State<StatefulWidget>{
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {

    return Scaffold(
       resizeToAvoidBottomInset: false,
        body:Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 70,),
              Container(
                child: Image.asset('assets/images/main_icon.png'),
                width: 100,
                height: 100,
              ),
              SizedBox(height: 10,),
              Center(child: Text('Welcome Back', style: TextStyle(fontSize: 26, fontWeight: FontWeight.w500))),
              SizedBox(height: 10,),
              Container(
                width: double.infinity,
                child: Center(child: Text("We'r happy to see you again. To use your", style: TextStyle(fontSize: 15))),
              ),
              Container(
                width: double.infinity,
                child: Center(child: Text("account you should login first.", style: TextStyle(fontSize: 15))),
              ),
              SizedBox(height: 30,),
              Container(
                padding: const EdgeInsets.all(10),
                child: TextField(

                  controller: phoneController,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.phone),
                    prefixIconColor: Colors.black,
                    border: OutlineInputBorder(),
                    labelText: 'Phone Number',
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                child: TextField(
                  obscureText: true,
                  controller: passwordController,
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.lock),
                    prefixIconColor: Colors.black,
                    border: OutlineInputBorder(),
                    labelText: 'Password',
                    suffixIcon: Icon(Icons.visibility_off),
                    suffixIconColor: Colors.black,
                  ),
                ),
              ),
              TextButton(
                onPressed: () {
                  //forgot password screen
                },
                child: const Text('Forgot Password',),
              ),
              Container(
                  height: 50,
                  padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                  child: ElevatedButton(
                    child: const Text('Login'),
                    onPressed: () {
                      print(phoneController.text);
                      print(passwordController.text);
                    },
                  )
              ),
              Row(
                children: [
                  const Text('Does not have account?'),
                  TextButton(
                    child: const Text(
                      'Sign in',
                    ),
                    onPressed: () {
                    //   //signup screen
                    //
                    //   Navigator.push(context, MaterialPageRoute(builder: (context) => LocationPage()));
                    },
                  )
                ],
                mainAxisAlignment: MainAxisAlignment.center,
              ),
            ],
          ),
        )

    );
  }

}