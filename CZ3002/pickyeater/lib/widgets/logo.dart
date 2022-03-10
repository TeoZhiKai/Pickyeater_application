import 'package:flutter/material.dart';
import 'package:pickyeater/utils/color.dart';

class Logo extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
            child:  Container(
                width: 70,
                height: 70,
                decoration: BoxDecoration(
                  image : DecorationImage(
                      image: AssetImage('assets/images/Image5.png'),
                      fit: BoxFit.fill
                  ),
                )
            )
        );
  }
}



class LogoBig extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
        child:  Container(
            width: 140,
            height: 140,
            decoration: BoxDecoration(
              image : DecorationImage(
                  image: AssetImage('assets/images/Image5.png'),
                  fit: BoxFit.fill
              ),
            )
        )
    );
  }
}