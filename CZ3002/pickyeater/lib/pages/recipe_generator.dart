

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:pickyeater/models/firebase_file.dart';
import 'package:pickyeater/utils/color.dart';

import '../models/firestore.dart';
import '../widgets/button.dart';
import 'favourite_page.dart';




class recipe_generator extends StatefulWidget {


  final String title;
  final   _image;       // this is photo taken from phone
  //final FirebaseFile file; // this is image from firebase
  final String fileurl;
  const recipe_generator(this._image,this.fileurl,this.title);

  //TODO: Connection to the AI model database
  // _image and file.url is the image that need to sent to AI to output recipe


  @override
  _recipe_generatorState createState() => _recipe_generatorState();
}

class _recipe_generatorState extends State<recipe_generator> {
  var currentUser = FirebaseAuth.instance.currentUser;

  // Condition to check if it is from generated or catelogue
  Widget _conditionImageView(){
    if (widget._image==null){
        return ClipOval( child:
          Image.network(widget.fileurl,width: 300,height: 300,fit: BoxFit.cover,));
      //return Text("Image is not loaded");
      }
    else {return ClipOval( child:
      Image.file(widget._image,width: 300,height: 300,fit: BoxFit.cover,));}

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: offWhite,
      appBar: AppBar(
        toolbarHeight: 80,
        leading:  new IconButton(
          padding : const EdgeInsets.all(15.0),
          icon: new Icon(Icons.arrow_back_ios),
          color: Colors.black,
          onPressed: () {
            Navigator.of(context).maybePop();
          },
        ),
        backgroundColor: offWhite,
        elevation: 0,
      ),
      body: Center(
        child: Stack(
            children: <Widget>[
          Positioned(child: Container (
            margin: EdgeInsets.fromLTRB(0, 0, 0, 300),
            child:_conditionImageView()),
          ),

          Positioned(
              top: 320,
              left: 100,
              child:
              Text(widget.title,style: TextStyle( fontSize: 25.0,
                fontWeight: FontWeight.normal,),)),


          Positioned(
              top: 350,
              child:
              Text('Recipe',style: TextStyle( fontSize: 20.0,
              fontWeight: FontWeight.bold,),)),

          Positioned(
              top: 380,
              width: 300,
              child:
                  //======================OUTPUT from AI================================

              Center( //I added this widget to show that the width limiting widget doesn't need to be a direct parent.
                  child: Text('recipe detail generate here.........', textAlign: TextAlign.left, style: TextStyle(
                      decoration: TextDecoration.none,
                      color: Color.fromRGBO(0, 0, 0, 1),
                      fontFamily: 'Roboto',
                      fontSize: 18,
                      letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                      fontWeight: FontWeight.values[2],
                      height: 1.5
                  )))

            //======================OUTPUT from AI================================

          ),

              Positioned(
                  top: 490,
                  left: 50,
                  width: 200,
                  height: 50,
                  child: CustomCurvedAllButton(
                      btnText: 'Favourite',
                      btnPressed: () async {
                        if (widget._image!=null){
                          // using photo image
                          var furl= await  uploadconvertFSurl(widget.title,widget._image );
                          updateimageFS(currentUser.uid,widget.title,furl);
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => FavouriteWidget(currentUser.uid)));

                        }
                        else{

                          updateimageFS(currentUser.uid,widget.title,widget.fileurl);
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => FavouriteWidget(currentUser.uid)));



                        }

                        // go to favourite page



                      }

                  )


              ),




            ]
            ),


      // This trailing comma makes auto-formatting nicer for build methods.
    )



    );



    }


    // Start favorite to store in firestore
  // Future createUserInFS (String uid,String email,String file) async{
  //   print(uid);
  //   final docUser = FirebaseFirestore.instance.collection('User_favourite').doc(uid);
  //   final json={
  //     'email': email,
  //     'image': FieldValue.arrayUnion([file]),
  //   };
  //
  //   await docUser.set(json);}

  }
