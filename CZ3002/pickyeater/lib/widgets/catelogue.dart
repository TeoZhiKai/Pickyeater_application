import 'package:flutter/material.dart';
import 'package:pickyeater/models/firebase_file.dart';
import 'package:pickyeater/utils/color.dart';
import 'package:pickyeater/widgets/cardview.dart';

import '../firebase_api.dart';
import 'button.dart';


class CatelogueWidget extends StatefulWidget {

  final String catelogType;
  CatelogueWidget({this.catelogType});

  @override
  _CatelogueWidgetState createState() => _CatelogueWidgetState();
}

class _CatelogueWidgetState extends State<CatelogueWidget> {
  Future<List<FirebaseFile>> futureFiles;

  @override
  void initState() {
    super.initState();

    futureFiles= FirebaseApi.listAll('Foods/'); // change depending on accessing which file in the storage

  }


  @override
  //Widget build(BuildContext context) {
  // Figma Flutter Generator CatelogueWidget - FRAME
  //print(widget.catelogType);
  Widget build(BuildContext context) =>
      //return Scaffold(
  Scaffold(

      backgroundColor: offWhite,
      appBar: AppBar(
          toolbarHeight: 100,

          title: Text(widget.catelogType,style: TextStyle( fontSize: 20.0,
            fontWeight: FontWeight.bold,),),

          backgroundColor: offWhite,
          elevation: 0,
          leading: new IconButton(
            icon: new Icon(Icons.arrow_back_ios),
            color: Colors.black,
            onPressed: () {
              Navigator.of(context).maybePop();
            },
          ),

          actions: <Widget>[
          ]
      ),


      // body:ListView.builder(
      //
      //   itemBuilder: (context, position) {
      //     return
      //     Cardview(context:context,position: position);
      //     // return Card(
      //     //   child: Padding(
      //     //     padding: const EdgeInsets.all(16.0),
      //     //     child: Text(position.toString(), style: TextStyle(fontSize: 22.0),),
      //     //   ),
      //     // );
      //   },
      // ),

      body: FutureBuilder<List<FirebaseFile>>(
          future: futureFiles,
          builder: (context, snapshot) {
            switch (snapshot.connectionState) {
              case ConnectionState.waiting:
                return Center(child: CircularProgressIndicator(),);
              default:
                if (snapshot.hasError) {
                  return Center(child: Text('ERROR'));
                }
                else {
                  final files = snapshot.data;
                  print(files);
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //buildHeader(0),
                      const SizedBox(height: 12,),
                      Expanded(child:
                      ListView.builder(itemCount: files.length,
                          itemBuilder: (context, index) {
                            final file = files[index];

                            return Cardview(context: context, file:file);
                          }))
                    ],
                  );
                }
            }
          }

      )


  );

//}
  Widget buildFile(BuildContext context, FirebaseFile file) => ListTile(
    leading:
    ClipOval(
      child:
      Image.network(
          file.url,
        width: 52,
        height: 52,
        fit: BoxFit.cover,

      ),
  ),

    title: Text(file.name,
    style: TextStyle(fontWeight: FontWeight.bold,
    ),

    ),

  );
}
