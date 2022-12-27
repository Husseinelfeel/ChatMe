import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  CustomButton({required this.textbutton});

  String? textbutton;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 45,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.white,
      ),
      child: Center(
          child: Text(
        textbutton!,
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
      ),
      ),
    );
  }
}
