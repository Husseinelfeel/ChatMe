// ignore_for_file: prefer_const_constructors

import 'package:chatme/screens/signup_screen.dart';
import 'package:chatme/widgets/Textfield_widget.dart';
import 'package:chatme/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import '../cnstant.dart';

class loginscreen extends StatelessWidget {
  String id = 'loginScreen';
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Scaffold(
        backgroundColor: kprimarycolor,
        body: ListView(children: [
          Image.asset("assets/images/scholar.png",height: 100,),
          Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "ScholarChat",
                style: TextStyle(
                    fontSize: 25, color: Colors.white, fontFamily: "Pacifico"),
              ),
            ],
          ),
          SizedBox(height: 80,),
          Text(
            "Login",
            style: TextStyle(fontSize: 25, color: Colors.white),
          ),SizedBox(height: 15,),
          CustomTextField(hintText: 'Email' , type: TextInputType.emailAddress,prefixIcon: Icon(Icons.email)),
          SizedBox(
            height: 25,
          ),

          CustomTextField(hintText: 'Password' , type: TextInputType.text,prefixIcon: Icon(Icons.lock),),
          SizedBox(
            height: 25,
          ),
          CustomButton(textbutton: 'Login'),
        Row(mainAxisAlignment: MainAxisAlignment.center,children: [
          Text("don't have an account?",style: TextStyle(color: Colors.white),),

          TextButton(onPressed: (){
            Navigator.pushNamed(context, signupScreen().id);
          },
              child: Text("SignUp",style: TextStyle(color: Colors.blue),)),
        ],),
        ]),
      ),
    );
  }
}
