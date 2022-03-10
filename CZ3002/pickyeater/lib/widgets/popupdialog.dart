


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';




Future<void> _showChoiceDialog(BuildContext context){
  return showDialog(context: context, builder: (BuildContext context){
    return AlertDialog(
      content: SingleChildScrollView(
        child: ListBody(
          children:<Widget>[
           GestureDetector(
             child: Text('Gallary'),
             onTap: () {null;},

           ),
            GestureDetector(
              child: Text('Camera'),
              onTap: () {null;},

            ),


          ]
        )

      )

    );
  }
  );

}