import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:pickyeater/pages/favourite_page.dart';
import 'package:pickyeater/pages/profile.dart';
import 'package:pickyeater/pages/recipe_generator.dart';
import 'package:pickyeater/pages/test_photo.dart';
import 'dart:math' as math;
import 'package:pickyeater/widgets/popupdialog.dart';

import 'package:pickyeater/widgets/button.dart';


import 'package:pickyeater/pages/welcome.dart';
import 'package:pickyeater/widgets/option_tab.dart';

import '../utils/color.dart';
import '../widgets/catelogue.dart';
import 'foods_page.dart';

import 'dart:io';
import 'dart:async';

class MainpageWidget extends StatefulWidget {
  @override
  _MainpageWidgetState createState() => _MainpageWidgetState();
}

class _MainpageWidgetState extends State<MainpageWidget> {
  File image;
  var currentUser = FirebaseAuth.instance.currentUser;

    Future getImage(ImageSource source) async{
      try{
        final image1 = await ImagePicker().pickImage(source: ImageSource.camera);
        if (image1 ==null) return;

        final imageTemporary =File(image1.path);
        this.image = imageTemporary;
      } on PlatformException catch (e){print('fail');}

      Navigator.of(context).pop();

      Navigator.push(context,
          MaterialPageRoute(builder: (context) => recipe_generator(this.image,null,'generated')));


    }

  Future getGallary(ImageSource source) async{
    try{
      final image1 = await ImagePicker().pickImage(source: ImageSource.gallery);
      if (image1 ==null) return;

      final imageTemporary =File(image1.path);
      this.image = imageTemporary;
    } on PlatformException catch (e){print('fail');}

    Navigator.of(context).pop();

    Navigator.push(context,
        MaterialPageRoute(builder: (context) => recipe_generator(this.image,null,'generated')));


  }

  Future<void> _showChoiceDialog(BuildContext context){
    return showDialog(context: context, builder: (BuildContext context){
      return AlertDialog(
        
          content: SingleChildScrollView(
              child: ListBody(
                  children:<Widget>[
                    GestureDetector(
                      child: Text('Gallary'),
                      onTap: () {
                        print("choose from gallary");

                        getGallary(ImageSource.gallery);
                      },

                    ),
                    Padding(padding: EdgeInsets.all(10)),
                    GestureDetector(
                      child: Text('Camera'),
                      onTap: () {
                        print("taking photo");
                        getImage(ImageSource.camera);
                        
                      },

                    ),


                  ]
              )

          )

      );
    }
    );

  }


  @override
  Widget build(BuildContext context) {
    // Figma Flutter Generator MainpageWidget - FRAME

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
          color : white,
        ),



        child: Stack(
            children: <Widget>[


              Positioned(
                  top: 0,
                  left: 1,
                  //height: 500,
                  child: Container(
                      width: 413,
                      height: 300,
                      decoration: BoxDecoration(
                        image : DecorationImage(
                            image: AssetImage('assets/images/Image3.png'),
                            fit: BoxFit.fill,
                            colorFilter: ColorFilter.mode(Colors.white.withOpacity(0.5), BlendMode.modulate,)
                        ),
                      )
                  )
              ),Positioned(
                  top: 132,
                  left: 50,
                  child: Text('PicyEater', textAlign: TextAlign.left, style: TextStyle(
                      decoration: TextDecoration.none,
                      color: Color.fromRGBO(0, 0, 0, 1),
                      fontSize: 48,
                      letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                      fontWeight: FontWeight.bold,
                      height: 1
                  ),)
              ),Positioned(
                  top: 320,
                  left: 140,
                  child: tab_option( context: context,optText: "Foods", goPage: ()=>  CatelogueWidget(catelogType: "Foods"))

                //child: opttap(context,'Foods',()=> Foods_page()) ,
              ),Positioned(
                  top: 320,
                  left: 50,
                  child:
                    Text('Picky', textAlign: TextAlign.left, style: TextStyle(
                        decoration: TextDecoration.none,
                        color: Color.fromRGBO(250, 74, 12, 1),
                       fontSize: 17,
                       letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                       fontWeight: FontWeight.normal,
                       height: 1
                   ),)
              ),Positioned(
                  top: 320,
                  left: 220,
                  child: tab_option( context: context,optText: "Drinks", goPage: ()=>null)
              ),Positioned(
                  top: 320,
                  left: 290,
                  child: tab_option( context: context,optText: "Snacks", goPage: ()=> null) // debug of camera
              ),
              Positioned(
                  top: 340,
                  left: 30,
                  child: Container(
                      width: 87,
                      height: 2,
                      decoration: BoxDecoration(
                        borderRadius : BorderRadius.only(
                          topLeft: Radius.circular(40),
                          topRight: Radius.circular(40),
                          bottomLeft: Radius.circular(40),
                          bottomRight: Radius.circular(40),
                        ),
                        boxShadow : [BoxShadow(
                            color: Color.fromRGBO(195, 63, 21, 0.10000000149011612),
                            offset: Offset(0,4),
                            blurRadius: 4
                        )],
                        color : Color.fromRGBO(250, 74, 12, 1),
                      )
                  )
              ),




              Positioned(
                  top: 370,
                  left: 104,
                  child: Container(
                      width: 236,
                      height: 236,

                      child: Stack(
                          children: <Widget>[

                            Positioned(
                                top: 0,
                                left: 0,
                                child:
                                Material(
                                child:

                                  InkWell(

                                    onTap: () {

                                      _showChoiceDialog(context);




                                    },
                                    child: ClipRRect(
                                      //borderRadius: BorderRadius.circular(50.0),
                                      child: Container(
                                            width: 200,
                                            height: 250,
                                            //color: white,
                                            decoration: BoxDecoration(
                                              color: white,
                                              image : DecorationImage(
                                                  image: AssetImage('assets/images/Image5.png'),
                                                  fit: BoxFit.fitWidth
                                              ),
                                            )
                                        )
                                    ),
                                  ),

                                  )




                            ),





                          ]
                      )
                  )


              ),
              Positioned(
                  top: 620,
                  child:
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      SizedBox(width: 80,),

                      Material(
                        color: white,
                        child: IconButton(
                          icon: new Icon(Icons.home),
                          color: primaryColor,
                          //highlightColor: Colors.pink,
                          onPressed: (){
                            // do nothing
                            },
                        ),

                      ),

                    SizedBox(width: 50,),
                      Material(
                        color: white,
                        child: IconButton(
                          icon: new Icon(Icons.favorite_border),
                          color: Colors.grey,
                          //highlightColor: Colors.pink,
                          onPressed: (){Navigator.push(context,
                              MaterialPageRoute(builder: (context) => FavouriteWidget(currentUser.uid)));},
                        ),

                      ),
                      SizedBox(width: 50,),
                      Material(
                        color: white,
                        child: IconButton(
                          icon: new Icon(Icons.person_outline),
                          color: Colors.grey,
                          //highlightColor: Colors.pink,
                          onPressed: (){Navigator.push(context,
                              MaterialPageRoute(builder: (context) => ProfileWidget()));},
                        ),

                      ),
                    ],
                  )

              )




            ]
        )
    );
  }
}
