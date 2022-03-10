import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:pickyeater/models/firebase_file.dart';
import 'package:pickyeater/utils/color.dart';
import 'package:pickyeater/widgets/cardview.dart';

import '../firebase_api.dart';
import '../widgets/cardview_fav.dart';
import '../models/firestore.dart';
import 'main_page.dart';



class FavouriteWidget extends StatefulWidget {

  final String uid;
  FavouriteWidget(this.uid);

  @override
  _FavouriteWidgetState createState() => _FavouriteWidgetState();
}

class _FavouriteWidgetState extends State<FavouriteWidget> {
  //Future<List<FirebaseFile>> futureFiles;

  @override
  void initState() {
    super.initState();

    //futureFiles= FirebaseApi.listAll('Foods/'); // change depending on accessing which file in the storage

  }


  @override
  //Widget build(BuildContext context) {
  // Figma Flutter Generator CatelogueWidget - FRAME
  //print(widget.catelogType);

  CollectionReference users = FirebaseFirestore.instance.collection('User_favourite');
  Widget build(BuildContext context) =>
      //return Scaffold(
  Scaffold(

      backgroundColor: offWhite,
      appBar: AppBar(
          toolbarHeight: 100,

          title: Text('Favourite',style: TextStyle( fontSize: 20.0,
            fontWeight: FontWeight.bold,),),

          backgroundColor: offWhite,
          elevation: 0,
          leading: new IconButton(
            icon: new Icon(Icons.arrow_back_ios),
            color: Colors.black,
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => MainpageWidget()));
            },
          ),

          actions: <Widget>[
          ]
      ),



      // body: FutureBuilder<>(
      //     future: readUser(),
      //     builder: (context, snapshot) {
      //       switch (snapshot.connectionState) {
      //         case ConnectionState.waiting:
      //           return Center(child: CircularProgressIndicator(),);
      //         default:
      //           if (snapshot.hasError) {
      //             return Center(child: Text('ERROR'));
      //           }
      //           else {
      //             final files = snapshot.data;
      //             print(files);
      //             return Column(
      //               crossAxisAlignment: CrossAxisAlignment.start,
      //               children: [
      //                 //buildHeader(0),
      //                 const SizedBox(height: 12,),
      //                 Expanded(child:
      //                   ListView.builder(itemCount: files.length,
      //                     itemBuilder: (context, index) {
      //                       final file = files[index];
      //
      //                       return Cardview(context: context, file:file);
      //                     }))
      //               ],
      //             );
      //           }
      //       }
      //     }
      //
      // )


    body: FutureBuilder<DocumentSnapshot>(
              future: users.doc(widget.uid).get(),
              builder:
              (BuildContext context, AsyncSnapshot<DocumentSnapshot> snapshot) {
              switch (snapshot.connectionState) {
                      case ConnectionState.waiting:
                        return Center(child: CircularProgressIndicator(),);
                      default:
                        if (snapshot.hasError) {
                          return Center(child: Text('ERROR'));
                        }
                        else {
                          if (snapshot.connectionState == ConnectionState.done) {
                            Map<String, dynamic> data = snapshot.data.data() as Map<
                                String,
                                dynamic>;
                            print("${data['image'].length}");

                            int favlength  =int.parse("${data['image'].length}");
                            return
                              // Text(
                              //   "${data['image'][0]}");



                              //Image.network("${data['image'][0]}",width: 300,height: 300,fit: BoxFit.cover,);
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                //buildHeader(0),
                                const SizedBox(height: 12,),
                                Expanded(child:
                                  ListView.builder(itemCount: favlength,
                                      itemBuilder: (context, index) {
                                        //final file = data[index];
                                        final imfile = "${data['image'][index]}";
                                        final imtxt = "${data['foodtitle'][index]}";

                                        return Slidable(
                                          key: ValueKey(index),
                                          startActionPane:ActionPane(
                                            motion:  ScrollMotion(),
                                            dismissible: DismissiblePane(onDismissed: () {


                                              deleteimageFS(widget.uid,imtxt,imfile);

                                              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                                                content: Text('Delete ${data['foodtitle'][index]}'))
                                            );

                                            }),

                                            children:  [
                                              // A SlidableAction can have an icon and/or a label.
                                              SlidableAction(
                                                onPressed: (context) {
                                                  // ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                                                  //     content: Text('Delete ${data['foodtitle'][index]}'))
                                                  // );

                                                },
                                                backgroundColor: Color(0xFFFE4A49),
                                                foregroundColor: Colors.white,
                                                icon: Icons.delete,
                                                label: 'Delete',
                                              ),

                                            ],
                                          ),








                                           child: Cardview_fav(context: context, file:imfile ,file2: imtxt,),


                                        );
                                          //Cardview_fav(context: context, file:imfile ,file2: imtxt,);
                                    }))
                              ],
                            );


                          }


                        }



                // if (snapshot.hasError) {
                //   return Text("Something went wrong");
                // }

                if (snapshot.hasData && !snapshot.data.exists) {
                  return Text("Document does not exist");
                }

                // if (snapshot.connectionState == ConnectionState.done) {
                //   Map<String, dynamic> data = snapshot.data.data() as Map<
                //       String,
                //       dynamic>;
                //   return
                //     // Text(
                //     //   "${data['image'][0]}");
                //
                //   Image.network("${data['image'][0]}",width: 300,height: 300,fit: BoxFit.cover,);
                //
                //
                // }

                return Text("loading");



              }})


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
