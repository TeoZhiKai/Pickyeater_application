import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';

import '../pages/foods_page.dart';
import '../pages/welcome.dart';





class tab_option extends StatelessWidget {
  BuildContext context;
  final String optText;
  //final Function optPressed;
  Widget Function() goPage;
  tab_option({this.context,this.optText , this.goPage});

  @override
  Widget build(BuildContext context) {


    return RichText (
        text:TextSpan(
      text:optText ,
      style: TextStyle(
          decoration: TextDecoration.none,
          color: Color.fromRGBO(153, 153, 157, 1),
          fontSize: 17,
          letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
          fontWeight: FontWeight.normal,
          height: 1

            ),
            recognizer: TapGestureRecognizer()
              ..onTap  = () {
                print(optText);

                  // Navigator.push(context,
                  //     MaterialPageRoute(
                  //         builder: (context) : goPage()));
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: ( BuildContext context) {
                        return goPage();
                      }));


        }


          ));
  }


}

