// ignore_for_file: prefer_const_constructors

import 'package:chatme/screens/login_screen.dart';
import 'package:chatme/widgets/Textfield_widget.dart';
import 'package:chatme/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import '../cnstant.dart';

class signupScreen extends StatelessWidget {
  String id = 'signupScreen';
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
            "Signup",
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
          CustomButton(textbutton: 'Signup'),
          Row(mainAxisAlignment: MainAxisAlignment.center,children: [
            Text("have an account?",style: TextStyle(color: Colors.white),),

            TextButton(onPressed: (){
              Navigator.pushNamed(context, loginscreen().id);
            },
                child: Text("Login",style: TextStyle(color: Colors.blue),)),
          ],),
        ]),
      ),
    );
  }
}
