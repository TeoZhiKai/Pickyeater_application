import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:pickyeater/utils/color.dart';
import 'package:pickyeater/widgets/button.dart';
import 'dart:math' as math;
import 'package:pickyeater/widgets/logo.dart';
import 'package:flutter/gestures.dart';
import 'package:pickyeater/widgets/textbox.dart';

import 'package:pickyeater/pages/main_page.dart';


class forgetpassWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _forgetpassWidgetState();
}

class _forgetpassWidgetState extends State<forgetpassWidget> {


  TextEditingController _emailTextController = TextEditingController();
  TextEditingController _passwordTextController = TextEditingController();
  TextEditingController _userNameTextController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    // Figma Flutter Generator LoginpageWidget - FRAME

    return Container(
        width: 414,
        height: 800,
        decoration: BoxDecoration(
          borderRadius : BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),
          color : Color.fromRGBO(242, 242, 242, 1),
        ),
        child: Stack(
            children: <Widget>[
              Positioned(
                  top: -15,
                  left: 0,
                  child: Container(
                      width: 414,
                      height: 350,
                      decoration: BoxDecoration(
                        borderRadius : BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30),
                          bottomLeft: Radius.circular(30),
                          bottomRight: Radius.circular(30),
                        ),
                        boxShadow : [BoxShadow(
                            color: Color.fromRGBO(0, 0, 0, 0.05999999865889549),
                            offset: Offset(0,4),
                            blurRadius: 30
                        )],
                        color : Color.fromRGBO(255, 255, 255, 1),
                      )
                  )


              ),
              Positioned(
                  top: 200,
                  height: 500,
                  width: 420,


                    child: Scaffold(
                        extendBodyBehindAppBar:false,

                        appBar: AppBar(
                            automaticallyImplyLeading: false,

                          backgroundColor: Colors.white,
                          elevation: 0,
                          centerTitle: true,

                          title: Text("Reset Password")


                        ),

                        body:



                            /////////////////////////////////////////////// Sign-up widget page/////////////////////////////////////////////////////////


                            Container(

                              child: Stack(
                                children:<Widget> [


                                  Positioned(
                                      top: 0,
                                      left: 50,
                                      child: Container(
                                          width: 314,
                                          height: 150,

                                          child: Stack(
                                              children: <Widget>[


                                                Positioned(
                                                    top: 60,
                                                    left: 0,
                                                    child: Text('Email address', textAlign: TextAlign.left, style: TextStyle(
                                                        decoration: TextDecoration.none,
                                                        color: textgrey,
                                                        fontSize: 15,
                                                        //letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                                        fontWeight: FontWeight.values[2],
                                                        height: 1
                                                    ),)
                                                ),Positioned(
                                                    top:80,
                                                    left: 0,
                                                    width: 400,
                                                    height: 30,
                                                    child:
                                                    Material(
                                                      child:

                                                      reusableTextField("Enter Email", Icons.person_outline, false,
                                                          _emailTextController),)

                                                ),Positioned(
                                                    top: 59,
                                                    left: 0,
                                                    child: Divider(
                                                        color: Color.fromRGBO(0, 0, 0, 1),
                                                        thickness: 0.5
                                                    )

                                                ),
                                              ]
                                          )
                                      )
                                  ),




                                  Positioned(
                                      top: 250,
                                      left: 100,
                                      width: 200,
                                      height: 50,

                                      child: CustomCurvedAllButton(
                                          btnText: 'Reset Password',
                                          btnPressed: () {
                                            FirebaseAuth.instance
                                                .sendPasswordResetEmail(
                                                email: _emailTextController
                                                    .text)
                                                .then((value) {
                                              print("Password Reset");
                                              Navigator.of(context).pop();

                                            }).onError((error, stackTrace) {
                                              print("Error ${error.toString()}");
                                            });
                                          })

                                  )
                                ],


                              ),
                          )
                    )
              )
















              ,Positioned(
                  top: 94,
                  left: 130,
                  child: Container(
                      width: 154,
                      height: 164,

                      child: Stack(
                          children: <Widget>[
                            Positioned(
                                top: 0,
                                left: 0,
                                child: Container(
                                    width: 154,
                                    height: 164,

                                    child: Stack(
                                        children: <Widget>[
                                          Positioned(
                                              top: 0,
                                              left: 0,
                                              child:LogoBig()
                                          )
                                        ]
                                    )
                                )
                            ),
                          ]
                      )
                  )
              ),
            ]
        )
    );
  }
}
