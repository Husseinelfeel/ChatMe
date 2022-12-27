import 'dart:ui';

import 'package:flutter/material.dart';




class CustomTextField extends StatelessWidget {
  CustomTextField({this.hintText,this.type,this.prefixIcon});
  String? hintText;
  TextInputType? type;
 Icon? prefixIcon ;

  @override
  Widget build(BuildContext context) {
    return TextField(keyboardType: type,

      decoration: InputDecoration(
        prefixIcon: prefixIcon,
          hintText: hintText,
          hintStyle: TextStyle(color: Colors.white),
          border:
              OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
          enabledBorder:
              OutlineInputBorder(borderSide: BorderSide(color: Colors.white))),
    );
  }
}
