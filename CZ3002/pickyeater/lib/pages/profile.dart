import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:pickyeater/pages/welcome.dart';

import '../widgets/button.dart';


class ProfileWidget extends StatefulWidget {
  @override
  _ProfileWidgetState createState() => _ProfileWidgetState();
}

class _ProfileWidgetState extends State<ProfileWidget> {
  var currentUser = FirebaseAuth.instance.currentUser;



  @override
  Widget build(BuildContext context) {
    // Figma Flutter Generator ProfileWidget - FRAME


    String currentUserEmail;
    if (currentUser != null) {
      print(currentUser.email);
      currentUserEmail = currentUser.email;
    }

    return Container(
        width: 414,
        height: 896,
        decoration: BoxDecoration(
          borderRadius : BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),
          color : Color.fromRGBO(245, 245, 248, 1),
        ),
        child: Stack(
            children: <Widget>[
              Positioned(
                  top: 124,
                  left: 50,
                  child: Text('My profile', textAlign: TextAlign.left, style: TextStyle(
                      color: Color.fromRGBO(0, 0, 0, 1),
                      decoration: TextDecoration.none,

                      fontSize: 34,
                     // letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                      fontWeight: FontWeight.bold,
                      height: 1
                  ),)
              ),Positioned(
                  top: 60,
                  left: 41,
                  child: Container(
                      width: 24,
                      height: 24,
                      decoration: BoxDecoration(
                        color : Color.fromRGBO(255, 255, 255, 1),
                      ),
                      child: Stack(
                          children: <Widget>[
                            Material(color: Color.fromRGBO(245, 245, 248, 1),

                                child: backbutton(bkPressed: () {Navigator.pop(context);})
                            )

                          ]
                      )
                  )
              ),Positioned(
                  top: 209,
                  left: 42,
                  child: Text('Personal details', textAlign: TextAlign.left, style: TextStyle(
                      color: Color.fromRGBO(0, 0, 0, 1),
                      decoration: TextDecoration.none,
                      fontSize: 18,
                      letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                      fontWeight: FontWeight.normal,
                      height: 1
                  ),)
              ),Positioned(
                  top: 251,
                  left: 42,
                  child: Container(
                      width: 321.12835693359375,
                      height: 228,

                      child: Stack(
                          children: <Widget>[
                            Positioned(
                                top: 0,
                                left: 0,
                                child: Container(
                                    width: 321.12835693359375,
                                    height: 228,
                                    decoration: BoxDecoration(
                                      borderRadius : BorderRadius.only(
                                        topLeft: Radius.circular(20),
                                        topRight: Radius.circular(20),
                                        bottomLeft: Radius.circular(20),
                                        bottomRight: Radius.circular(20),
                                      ),
                                      boxShadow : [BoxShadow(
                                          color: Color.fromRGBO(0, 0, 0, 0.029999999329447746),
                                          offset: Offset(0,10),
                                          blurRadius: 40
                                      )],
                                      color : Color.fromRGBO(255, 255, 255, 1),
                                    )
                                )
                            ),Positioned(
                                top: 57,
                                left: 107.77595520019531,
                                child: Text(currentUserEmail, textAlign: TextAlign.left, style: TextStyle(
                                    color: Color.fromRGBO(0, 0, 0, 1),
                                    decoration: TextDecoration.none,
                                    fontSize: 15,
                                    letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                    fontWeight: FontWeight.normal,
                                    height: 1
                                ),)
                            ),Positioned(
                                top: 57.821533203125,
                                left: 24.194602966308594,
                                child: Text('Email:', textAlign: TextAlign.left, style: TextStyle(
                                    color: Color.fromRGBO(0, 0, 0, 1),
                                    decoration: TextDecoration.none,
                                    fontSize: 15,
                                    letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                    fontWeight: FontWeight.normal,
                                    height: 1
                                ),)
                            ),
                          ]
                      )
                  )
              ),Positioned(
                  top: 780,
                  left: 113,
                  child: Container(
                      width: 193,
                      height: 54,
                      decoration: BoxDecoration(
                        borderRadius : BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30),
                          bottomLeft: Radius.circular(30),
                          bottomRight: Radius.circular(30),
                        ),
                        color : Color.fromRGBO(246, 130, 45, 1),
                      )
                  )
              ),Positioned(
                  top: 600,
                  left: 100,
                  width: 200,
                  height: 50,
                  child: CustomCurvedAllButton(
                      btnText: 'Logout',
                      btnPressed: (){
                        FirebaseAuth.instance.signOut().then((value) {
                          print("Signed Out");
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => FrontpageWidget()));
                        });
                      }

                  )


              ),Positioned(
                  top: 376,
                  left: 86,
                  width: 250,
                  height: 50,
                  child:
                  CustomCurvedAllButton(
                      btnText: 'Reset Password',
                      btnPressed: (){
                          print("Update password");

                          FirebaseAuth.instance
                              .sendPasswordResetEmail(
                              email: currentUser.email
                                  )
                              .then((value) {
                            print("Password Reset");
                            Navigator.of(context).pop();

                          }).onError((error, stackTrace) {
                            print("Error ${error.toString()}");
                          });



                          // Navigator.push(context,
                          //     MaterialPageRoute(builder: (context) => FrontpageWidget()));

                      }

                  )



              ),
            ]
        )
    );
  }
}
