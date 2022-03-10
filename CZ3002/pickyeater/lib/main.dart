import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:pickyeater/pages/welcome.dart';


void main() async{

  WidgetsFlutterBinding.ensureInitialized();        // ensure firebase is initialize before running the app
  await Firebase.initializeApp();

  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  //const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.amber,
        platform: TargetPlatform.android,
      ),
      home: FrontpageWidget(),
    );
  }
}




