import 'dart:async';
import 'dart:async';
import 'dart:core';
import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:pickyeater/firebase_api.dart';

Future<void> createUserInFS (String uid,String email) async{
  print(uid);
  final docUser = FirebaseFirestore.instance.collection('User_favourite').doc(uid);
  final json={
    'email': email,
  };

  await docUser.set(json);
}

Future<void> updateimageFS (String uid,String title,String file) async{
  print(uid);
  FirebaseFirestore.instance.collection('User_favourite').doc(uid).update(

    {'foodtitle':FieldValue.arrayUnion([title]),
    'image':FieldValue.arrayUnion([file])}
  );

}


Future<void> deleteimageFS (String uid,String title,String file) async{
  print('Remove fav');
  print(uid);
  FirebaseFirestore.instance.collection('User_favourite').doc(uid).update(

      {'foodtitle':FieldValue.arrayRemove([title]),
        'image':FieldValue.arrayRemove([file])}
  );

}

Future<String> uploadconvertFSurl(String title,image ) async {


  var reference = FirebaseStorage.instance.ref().child('Favorite/${title}');
  await reference.putFile(image);
  String url = await reference.getDownloadURL();
  return url;





}











// Stream<List<User>> readUser() => FirebaseFirestore.instance
//     .collection('User_favourite')
//     .snapshots()
//     .map((snapshot)=> snapshot.docs.map((doc) => doc.data()).toList());
//
// static User fromJson(Map<String,dynamic> json) => User (
//
//
// )
//
// Future<User> readUser() async{
//
//   final docUser =FirebaseFirestore.instance.collection('User_favourite').doc(uid);
//       final snapshot = await docUser.get();
//
//       if (snapshot.exists){
//         return User.fromJson(snapshot.data());
//       }
// }


//
// class createUserFS {
//
//   Future<void> createUserInFS (String uid,String email) async{
//     print(uid);
//     final docUser = FirebaseFirestore.instance.collection('User_favourite').doc(uid);
//     final json={
//       'email': email,
//     };
//
//     await docUser.set(json);
//   }
// }