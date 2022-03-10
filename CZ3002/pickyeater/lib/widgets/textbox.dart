import 'package:flutter/material.dart';
import 'package:pickyeater/utils/color.dart';



class inputTextbox extends StatelessWidget {
  final String lbtext, hinttext;
   //String store;


  // constructor
  inputTextbox({this.lbtext,this.hinttext});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      child: TextField(
        obscureText: false,
        style: TextStyle(color: Colors.black),
        decoration: InputDecoration(
            labelText: lbtext,
            hintText: hinttext,
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20)),
            filled: true,
            fillColor: Colors.grey[50]),
        onChanged: (value) {
          //store = value.trim(); // store the email typed in _email
        },
      ),
    );
  }
}




TextField reusableTextField(String text, IconData icon, bool isPasswordType,
    TextEditingController controller) {
  return TextField(
    controller: controller,
    obscureText: isPasswordType,
    enableSuggestions: !isPasswordType,
    autocorrect: !isPasswordType,
    cursorColor: Colors.black,
    style: TextStyle(color: Colors.black.withOpacity(0.9)),
    decoration: InputDecoration(
      prefixIcon: Icon(
        icon,
        color: Colors.black,
      ),
      labelText: text,
      labelStyle: TextStyle(color: Colors.black.withOpacity(0.9)),
      filled: true,
      floatingLabelBehavior: FloatingLabelBehavior.never,
      fillColor: Colors.white.withOpacity(0.3),
      border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30.0),
          borderSide: const BorderSide(width: 0, style: BorderStyle.none)),
    ),
    keyboardType: isPasswordType
        ? TextInputType.visiblePassword
        : TextInputType.emailAddress,
  );
}