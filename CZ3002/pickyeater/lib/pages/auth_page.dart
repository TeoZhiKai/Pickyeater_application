import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:pickyeater/pages/welcome.dart';
import 'package:pickyeater/utils/color.dart';
import 'package:pickyeater/widgets/button.dart';
import 'dart:math' as math;
import 'package:pickyeater/widgets/logo.dart';
import 'package:flutter/gestures.dart';
import 'package:pickyeater/widgets/textbox.dart';

import 'package:pickyeater/pages/main_page.dart';

import '../models/firestore.dart';
import 'forgetpassword_page.dart';


class AuthWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _AuthpageWidgetState();
}

class _AuthpageWidgetState extends State<AuthWidget> {

  //String _email, _passwrod;
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
                  child: DefaultTabController(
                    length: 2,
                    child: Scaffold(
                        extendBodyBehindAppBar:false,

                      appBar: AppBar(
                        automaticallyImplyLeading: false,
                        backgroundColor: Colors.white,
                        elevation: 0,
                        bottom:
                        TabBar(
                            tabs:[
                              Tab(text: 'Login'),
                              Tab(text: 'Sign-up',)
                            ]
                          ),
                        ),

                        body: TabBarView(
                          children: [
                          Container(

                            /////////////////////////////////////////////// Login widget page/////////////////////////////////////////////////////////
                            child: Stack(
                              children:<Widget> [


                                Positioned(
                                    top: 50,
                                    left: 50,
                                    child: Container(
                                        width: 314,
                                        height: 59,

                                        child: Stack(
                                            children: <Widget>[
                                              Positioned(
                                                  top: 0,
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
                                                  top:27,
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
                                top: 120,
                                left: 50,
                                child: Container(
                                    width: 314,
                                    height: 59,

                                    child: Stack(
                                        children: <Widget>[
                                          Positioned(
                                              top: 0,
                                              left: 0,
                                              child: Text('Password', textAlign: TextAlign.left, style: TextStyle(
                                                  decoration: TextDecoration.none,
                                                  color: textgrey,
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.values[2],
                                                  height: 1
                                              ),)
                                          ),Positioned(
                                              top: 20,
                                              left: 0,
                                              width: 400,
                                              height: 30,
                                              child:
                                              Material(child:
                                              reusableTextField("Enter Password", Icons.lock_outline, true,
                                                  _passwordTextController),
                                              )),



                                          Positioned(
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
                                /////////////////////////////////////////////////forget password ///////////////////////////////////////////////////////
                              Positioned(
                                  top: 200,
                                  left: 50,
                                  child: RichText(
                                      text:TextSpan(
                                        text:'Forgot passcode?',
                                        style: TextStyle(color: Color.fromRGBO(250, 74, 12, 1),
                                          fontSize: 17 ,
                                          fontWeight: FontWeight.normal,),
                                        recognizer: TapGestureRecognizer()
                                          ..onTap = () {
                                            Navigator.push(context,
                                                 MaterialPageRoute(
                                                    builder: (context) => forgetpassWidget()));
                                          },
                                      )
                                  )
                              ),
                              Positioned(
                                top: 250,
                                left: 100,
                                width: 200,
                                height: 50,

                                child: CustomCurvedAllButton(
                                    btnText: 'Login',
                                    btnPressed: (){
                                      FirebaseAuth.instance
                                          .signInWithEmailAndPassword(
                                          email: _emailTextController.text,
                                          password: _passwordTextController.text)
                                          .then((value) {
                                            print('Login');
                                        Navigator.push(context,
                                            MaterialPageRoute(builder: (context) => MainpageWidget()));
                                      }).onError((error, stackTrace) {
                                        print("Error ${error.toString()}");
                                      });


                                    }

                              )

                              )
                              ],


                            ),


                          ),

                            /////////////////////////////////////////////// Login widget page/////////////////////////////////////////////////////////


                            /////////////////////////////////////////////// Sign-up widget page/////////////////////////////////////////////////////////


                            Container(

                              child: Stack(
                                children:<Widget> [


                                  Positioned(
                                      top: 50,
                                      left: 50,
                                      child: Container(
                                          width: 314,
                                          height: 150,

                                          child: Stack(
                                              children: <Widget>[
                                                Positioned(
                                                    top: 0,
                                                    left: 0,
                                                    child: Text('Username', textAlign: TextAlign.left, style: TextStyle(
                                                        decoration: TextDecoration.none,
                                                        color: textgrey,
                                                        fontSize: 15,
                                                        //letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                                        fontWeight: FontWeight.values[2],
                                                        height: 1
                                                    ),)
                                                ),Positioned(
                                                    top:20,
                                                    left: 0,
                                                    width: 400,
                                                    height: 30,
                                                    child:
                                                    Material(
                                                      child:

                                                      reusableTextField("Enter Username", Icons.person_outline, false,
                                                          _userNameTextController),)

                                                ),



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
                                      top: 170,
                                      left: 50,
                                      child: Container(
                                          width: 314,
                                          height: 59,

                                          child: Stack(
                                              children: <Widget>[
                                                Positioned(
                                                    top: 0,
                                                    left: 0,
                                                    child: Text('Password', textAlign: TextAlign.left, style: TextStyle(
                                                        decoration: TextDecoration.none,
                                                        color: textgrey,
                                                        fontSize: 15,
                                                        fontWeight: FontWeight.values[2],
                                                        height: 1
                                                    ),)
                                                ),Positioned(
                                                    top: 20,
                                                    left: 0,
                                                    width: 400,
                                                    height: 30,
                                                    child:
                                                    Material(child:
                                                    reusableTextField("Enter Password", Icons.lock_outline, true,
                                                        _passwordTextController),
                                                    )),



                                                Positioned(
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
                                          btnText: 'Sign-up',
                                          btnPressed: () {
                                            FirebaseAuth.instance
                                                .createUserWithEmailAndPassword(
                                                email: _emailTextController
                                                    .text,
                                                password: _passwordTextController
                                                    .text)
                                                .then((value) {
                                              print("Created new account");

                                              var currentUser = FirebaseAuth.instance.currentUser;
                                              createUserInFS(currentUser.uid,currentUser.email);

                                              Navigator.push(context,
                                                  MaterialPageRoute(
                                                      builder: (context) => MainpageWidget()));
                                            }).onError((error, stackTrace) {
                                              print("Error ${error.toString()}");
                                            });


                                          })

                                  )
                                ],


                              ),



                            )


                          ],
                        )




                            )
                    ,)
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
        