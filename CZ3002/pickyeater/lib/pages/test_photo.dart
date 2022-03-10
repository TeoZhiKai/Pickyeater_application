import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';



class test_photo extends StatefulWidget {
  //test_photo({Key key, this.title}) : super(key: key);

  //final String title;
  final  _image;
  const test_photo(this._image);




  @override
  _test_photoState createState() => _test_photoState();
}

class _test_photoState extends State<test_photo> {

  // File _image;
  // Future getImage(){
  //   final image = ImagePicker().pickImage(source: ImageSource.camera);
  //
  //   setState(() {
  //     _image= image as File;
  //   });
  // }


  Widget _conditionImageView(){
    if (widget._image==null){return Text("Image is not loaded");}
    else {return Image.file(widget._image,width: 400,height: 400,);}

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text('test'),
      ),
      body: Center(

          child: _conditionImageView()
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        tooltip: 'Increment',
        child: Icon(Icons.camera_alt),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}