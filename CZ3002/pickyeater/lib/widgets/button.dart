import 'package:flutter/material.dart';
import 'package:pickyeater/utils/color.dart';

class CustomButton extends StatelessWidget {
  final String btnText;
  final Function btnPressed;

  // constructor
  CustomButton({this.btnText, this.btnPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: btnPressed,
        child: SizedBox(
            width: double.infinity,
            child: Center(
                child: Text(btnText,
                    style: TextStyle(
                      color: Color(0xFFEDEDED),
                    )))),
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(primaryColor),
        ));
  }
}




class CustomCurvedButton extends StatelessWidget {
  final String btnText;
  final Function btnPressed;

  // constructor
  CustomCurvedButton({this.btnText, this.btnPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: btnPressed,
        child: SizedBox(
            width: double.infinity,
            child: Center(
                child: Text(btnText,
                    style: TextStyle(
                      color:  primaryColor,
                    )))),
        style: ButtonStyle(
            //backgroundColor: Colors.white,
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
          ),
          backgroundColor: MaterialStateProperty.all<Color>(white),
        ));
  }
}


class CustomCurvedAllButton extends StatelessWidget {
  final String btnText;
  final Function btnPressed;

  // constructor
  CustomCurvedAllButton({this.btnText, this.btnPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: btnPressed,
        child: SizedBox(
            width: double.infinity,
            child: Center(
                child: Text(btnText,
                    style: TextStyle(
                      color:  white,
                    )))),
        style: ButtonStyle(
          //backgroundColor: Colors.white,
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
          ),
          backgroundColor: MaterialStateProperty.all<Color>(primaryColor),
        ));
  }
}


class backbutton extends StatelessWidget{

  final Function bkPressed;
  backbutton({this.bkPressed});

  @override
  Widget build(BuildContext context) {
    return IconButton(onPressed: bkPressed,
      icon: Icon(Icons.arrow_back_ios)
    );


  }
}