import 'package:flutter/material.dart';
import 'dart:math' as math;
import 'package:pickyeater/widgets/button.dart';
import 'package:pickyeater/utils/color.dart';
import 'package:pickyeater/widgets/logo.dart';

import 'package:pickyeater/pages/auth_page.dart';

class FrontpageWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _FrontpageWidgetState();
}


class _FrontpageWidgetState extends State<FrontpageWidget> {
  @override
  Widget build(BuildContext context) {
    // Figma Flutter Generator FrontpageWidget - FRAME

    return Container(
        width: 414,
        height: 500,
        decoration: BoxDecoration(
          borderRadius : BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),
          color : primaryColor,
        ),
        child: Stack(
            children: <Widget>[
              Positioned.fill(
                  top: 0,
                  left: -89,
                  bottom:200,


                  child: Container(
                      decoration: BoxDecoration(

                         image : DecorationImage(
                             image: AssetImage('assets/images/Image4.png'),
                            fit: BoxFit.fill
                        ),
                      )
                 )
              ),
              Positioned(
                  top: 0,

                  child: Container(
                        width: 500,
                        height: 500,
                        decoration: const BoxDecoration(
                        gradient: LinearGradient(
                        begin: Alignment.bottomCenter,
                        end:
                        Alignment(0.0, 0.0), // 10% of the width, so there are ten blinds.
                        colors: <Color>[
                        Color.fromRGBO(246, 129, 45, 1),
                        Color(0x00000000)
                        ],
                        ))
                  )
              )

              ,Positioned(
                  top: 420,
                  left: 20,
                  child: Logo()
              ),Positioned(
                  top: 400,
                  left: 99,
                  child:
                  Text('PicyEater', textAlign: TextAlign.left, style: TextStyle(
                      decoration: TextDecoration.none,
                      color: white,
                      fontFamily: 'Roboto',
                      fontSize: 60,
                      letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                      fontWeight: FontWeight.bold,
                      height: 1.5 /*PERCENT not supported*/
                  ),)
              ),Positioned(
                  top: 490,
                  left: 109,
                  child: Text('Discover recipes ', textAlign: TextAlign.left, style: TextStyle(
                      decoration: TextDecoration.none,
                      color: Color.fromRGBO(0, 0, 0, 1),
                      fontFamily: 'Roboto',
                      fontSize: 20,
                      letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                      fontWeight: FontWeight.bold,
                      height: 1.5 /*PERCENT not supported*/
                  ),)
              ),Positioned(
                  top: 530,
                  left: 61,
                  child:
                  Container(
                      width: 300,
                    child: Center( //I added this widget to show that the width limiting widget doesn't need to be a direct parent.
                        child: Text('Find new recipe of food just with a single image', textAlign: TextAlign.left, style: TextStyle(
                            decoration: TextDecoration.none,
                            color: Color.fromRGBO(0, 0, 0, 1),
                            fontFamily: 'Roboto',
                            fontSize: 18,
                            letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                            fontWeight: FontWeight.values[1],
                            height: 1.5
                        )))
                  )
              ),
              Positioned(
                  top: 600,
                  left: 100,
                  width: 200,
                  height: 50,
                  child:
                  CustomCurvedButton(
                    btnText: 'Get started',
                    btnPressed: (){
                      // Go to login_page
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => AuthWidget()));

                    }

              ),
              )


            ]
        )
    );
  }
}


/*
class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
*/