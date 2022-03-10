import 'package:flutter/material.dart';
import 'package:pickyeater/models/firebase_file.dart';
import 'package:pickyeater/utils/color.dart';

import '../pages/recipe_generator.dart';

class Cardview extends StatelessWidget {
  //final String btnText;
  //final Function btnPressed;
  BuildContext context;
  //var file;
  FirebaseFile file;


  // constructor
  Cardview({this.context, this.file});

  @override
  Widget build(BuildContext context) {
    return Container(

      child:Card(

        child:
        GestureDetector(
          onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)
          => recipe_generator(null,file.url,file.name.replaceAll(".jpg", "")))),
          child:
          Container(
            child: Stack( children: <Widget>[
              Positioned(
                top: 20,
                  left: 20,
                  child: ClipOval(
                    child: Image.network(
                      file.url,
                      width: 60,
                      height: 60,
                      fit: BoxFit.cover,),

              )),
              Positioned(
                  child:Container( height: 90,
                    margin: EdgeInsets.only(right: 0, left: 70, top: 10),
                    padding: const EdgeInsets.all(25.0),
                    child: Text(file.name.replaceAll(".jpg", ""), style: TextStyle(fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),),)
              ),
            ]),
        ),
      )
        ,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0),),
        margin: EdgeInsets.fromLTRB(50,10,50,10),
      )
    );;
  }
}