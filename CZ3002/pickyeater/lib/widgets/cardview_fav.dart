import 'package:flutter/material.dart';
import 'package:pickyeater/models/firebase_file.dart';
import 'package:pickyeater/utils/color.dart';

import '../pages/recipe_generator.dart';

class Cardview_fav extends StatelessWidget {
  //final String btnText;
  //final Function btnPressed;
  BuildContext context;
  var file;
  var file2;
  //FirebaseFile file;


  // constructor
  Cardview_fav({this.context, this.file, this.file2});



  @override
  Widget build(BuildContext context) {
    print(file);
    return Container(

        child:Card(

          child:
          GestureDetector(
            onTap: ()=>
                Navigator.push(context, MaterialPageRoute(builder: (context)
            => recipe_generator(null,file,file2.replaceAll(".jpg", "")))),
            child:
            Container(
              child: Stack( children: <Widget>[
                Positioned(
                    top: 20,
                    left: 20,
                    child: ClipOval(
                      child: Image.network(
                        //file.url,
                        file,
                        width: 60,
                        height: 60,
                        fit: BoxFit.cover,),

                    )),
                Positioned(
                    child:Container( height: 90,
                      width: 250,
                      margin: EdgeInsets.only(right: 0, left: 70, top: 10),
                      padding: const EdgeInsets.all(25.0),
                      child: Text(file2.replaceAll(".jpg", ""), style: TextStyle(fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),),)
                ),
              ]),
            ),
          )
          ,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0),),
          margin: EdgeInsets.fromLTRB(50,10,0,10),
        )
    );;
  }
}