import 'package:flutter/material.dart';


class foodCatelogueWidget extends StatefulWidget {
  @override
  _foodCatelogueWidgetState createState() => _foodCatelogueWidgetState();
}

class _foodCatelogueWidgetState extends State<foodCatelogueWidget> {
  @override
  Widget build(BuildContext context) {
    // Figma Flutter Generator CatelogueWidget - FRAME

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
          color : Color.fromRGBO(245, 245, 248, 1),
        ),
        child: Stack(
            children: <Widget>[
              Positioned(
                  top: 178,
                  left: 50,
                  child: Container(
                      width: 315,
                      height: 102,

                      child: Stack(
                          children: <Widget>[
                            Positioned(
                                top: 0,
                                left: 0,
                                child: Container(
                                    width: 315,
                                    height: 102,
                                    decoration: BoxDecoration(
                                      borderRadius : BorderRadius.only(
                                        topLeft: Radius.circular(20),
                                        topRight: Radius.circular(20),
                                        bottomLeft: Radius.circular(20),
                                        bottomRight: Radius.circular(20),
                                      ),
                                      boxShadow : [BoxShadow(
                                          color: Color.fromRGBO(0, 0, 0, 0.029999999329447746),
                                          offset: Offset(0,10),
                                          blurRadius: 40
                                      )],
                                      color : Color.fromRGBO(255, 255, 255, 1),
                                    )
                                )
                            ),Positioned(
                                top: 43,
                                left: 64,
                                child: Container(
                                    width: 16,
                                    height: 16,
                                    decoration: BoxDecoration(
                                      color : Color.fromRGBO(255, 255, 255, 1),
                                    ),
                                    child: Stack(
                                        children: <Widget>[
                                          Positioned(
                                              top: 2,
                                              left: 0,
                                              child: Container(
                                                  width: 16,
                                                  height: 12,

                                                  child: Stack(
                                                      children: <Widget>[
                                                        Positioned(
                                                            top: 0,
                                                            left: 0,
                                                            // child: SvgPicture.asset(
                                                            //     'assets/images/vector.svg',
                                                            //     semanticsLabel: 'vector'
                                                            //);
                                                        ),
                                                      ]
                                                  )
                                              )
                                          ),
                                        ]
                                    )
                                )
                            ),Positioned(
                                top: 27,
                                left: 99,
                                child: Text('Veggie tomato mix', textAlign: TextAlign.center, style: TextStyle(
                                    color: Color.fromRGBO(0, 0, 0, 1),
                                    fontFamily: 'Baloo',
                                    fontSize: 17,
                                    letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                    fontWeight: FontWeight.normal,
                                    height: 1
                                ),)
                            ),Positioned(
                                top: 16,
                                left: 17,
                                child:  //Mask holder Template
                                Container(
                                  width: 69.20712280273438,
                                  height: 69.20712280273438,
                                  child: ClipOval(
                                    child: Stack(
                                        children: <Widget>[
                                          Positioned(
                                              top: -4.000395774841309,
                                              left: -23.602420806884766,
                                              child: Container(
                                                  width: 116.41197967529297,
                                                  height: 77.20794677734375,
                                                  decoration: BoxDecoration(
                                                    image : DecorationImage(
                                                        image: AssetImage('assets/images/Image2.png'),
                                                        fit: BoxFit.fitWidth
                                                    ),
                                                  )
                                              )
                                          ),
                                        ]
                                    ),
                                  ),
                                )
                            ),
                          ]
                      )
                  )
              ),Positioned(
                  top: 416,
                  left: 56,
                  child: Container(
                      width: 315,
                      height: 102,

                      child: Stack(
                          children: <Widget>[
                            Positioned(
                                top: 0,
                                left: 0,
                                child: Container(
                                    width: 315,
                                    height: 102,
                                    decoration: BoxDecoration(
                                      borderRadius : BorderRadius.only(
                                        topLeft: Radius.circular(20),
                                        topRight: Radius.circular(20),
                                        bottomLeft: Radius.circular(20),
                                        bottomRight: Radius.circular(20),
                                      ),
                                      boxShadow : [BoxShadow(
                                          color: Color.fromRGBO(0, 0, 0, 0.029999999329447746),
                                          offset: Offset(0,10),
                                          blurRadius: 40
                                      )],
                                      color : Color.fromRGBO(255, 255, 255, 1),
                                    )
                                )
                            ),Positioned(
                                top: 43,
                                left: 64,
                                child: Container(
                                    width: 16,
                                    height: 16,
                                    decoration: BoxDecoration(
                                      color : Color.fromRGBO(255, 255, 255, 1),
                                    ),
                                    child: Stack(
                                        children: <Widget>[
                                          Positioned(
                                              top: 2,
                                              left: 0,
                                              child: Container(
                                                  width: 16,
                                                  height: 12,

                                                  child: Stack(
                                                      children: <Widget>[
                                                        Positioned(
                                                            top: 0,
                                                            left: 0,
                                                            // child: SvgPicture.asset(
                                                            //     'assets/images/vector.svg',
                                                            //     semanticsLabel: 'vector'
                                                            // );
                                                        ),
                                                      ]
                                                  )
                                              )
                                          ),
                                        ]
                                    )
                                )
                            ),Positioned(
                                top: 27,
                                left: 100,
                                child: Text('Egg and cucumber ', textAlign: TextAlign.center, style: TextStyle(
                                    color: Color.fromRGBO(0, 0, 0, 1),
                                    fontFamily: 'Baloo',
                                    fontSize: 17,
                                    letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                    fontWeight: FontWeight.normal,
                                    height: 1
                                ),)
                            ),
                          ]
                      )
                  )
              ),Positioned(
                  top: 532,
                  left: 56,
                  child: Container(
                      width: 315,
                      height: 222,

                      child: Stack(
                          children: <Widget>[
                            Positioned(
                                top: 0,
                                left: 0,
                                child: Container(
                                    width: 315,
                                    height: 102,
                                    decoration: BoxDecoration(
                                      borderRadius : BorderRadius.only(
                                        topLeft: Radius.circular(20),
                                        topRight: Radius.circular(20),
                                        bottomLeft: Radius.circular(20),
                                        bottomRight: Radius.circular(20),
                                      ),
                                      boxShadow : [BoxShadow(
                                          color: Color.fromRGBO(0, 0, 0, 0.029999999329447746),
                                          offset: Offset(0,10),
                                          blurRadius: 40
                                      )],
                                      color : Color.fromRGBO(255, 255, 255, 1),
                                    )
                                )
                            ),Positioned(
                                top: 43,
                                left: 64,
                                child: Container(
                                    width: 16,
                                    height: 16,
                                    decoration: BoxDecoration(
                                      color : Color.fromRGBO(255, 255, 255, 1),
                                    ),
                                    child: Stack(
                                        children: <Widget>[
                                          Positioned(
                                              top: 2,
                                              left: 0,
                                              child: Container(
                                                  width: 16,
                                                  height: 12,

                                                  child: Stack(
                                                      children: <Widget>[
                                                        Positioned(
                                                            top: 0,
                                                            left: 0,
                                                            // child: SvgPicture.asset(
                                                            //     'assets/images/vector.svg',
                                                            //     semanticsLabel: 'vector'
                                                            // );
                                                        ),
                                                      ]
                                                  )
                                              )
                                          ),
                                        ]
                                    )
                                )
                            ),Positioned(
                                top: 37,
                                left: 114,
                                child: Text('Fried chicken ', textAlign: TextAlign.center, style: TextStyle(
                                    color: Color.fromRGBO(0, 0, 0, 1),
                                    fontFamily: 'Baloo',
                                    fontSize: 17,
                                    letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                    fontWeight: FontWeight.normal,
                                    height: 1
                                ),)
                            ),Positioned(
                                top: 120,
                                left: 0,
                                child: Container(
                                    width: 315,
                                    height: 102,

                                    child: Stack(
                                        children: <Widget>[
                                          Positioned(
                                              top: 0,
                                              left: 0,
                                              child: Container(
                                                  width: 315,
                                                  height: 102,
                                                  decoration: BoxDecoration(
                                                    borderRadius : BorderRadius.only(
                                                      topLeft: Radius.circular(20),
                                                      topRight: Radius.circular(20),
                                                      bottomLeft: Radius.circular(20),
                                                      bottomRight: Radius.circular(20),
                                                    ),
                                                    boxShadow : [BoxShadow(
                                                        color: Color.fromRGBO(0, 0, 0, 0.029999999329447746),
                                                        offset: Offset(0,10),
                                                        blurRadius: 40
                                                    )],
                                                    color : Color.fromRGBO(255, 255, 255, 1),
                                                  )
                                              )
                                          ),Positioned(
                                              top: 43,
                                              left: 64,
                                              child: Container(
                                                  width: 16,
                                                  height: 16,
                                                  decoration: BoxDecoration(
                                                    color : Color.fromRGBO(255, 255, 255, 1),
                                                  ),
                                                  child: Stack(
                                                      children: <Widget>[
                                                        Positioned(
                                                            top: 2,
                                                            left: 0,
                                                            child: Container(
                                                                width: 16,
                                                                height: 12,

                                                                child: Stack(
                                                                    children: <Widget>[
                                                                      Positioned(
                                                                          top: 0,
                                                                          left: 0,
                                                                          // child: SvgPicture.asset(
                                                                          //     'assets/images/vector.svg',
                                                                          //     semanticsLabel: 'vector'
                                                                          // );
                                                                      ),
                                                                    ]
                                                                )
                                                            )
                                                        ),
                                                      ]
                                                  )
                                              )
                                          ),Positioned(
                                              top: 27,
                                              left: 102,
                                              child: Text('Moi-moi and ekpa', textAlign: TextAlign.center, style: TextStyle(
                                                  color: Color.fromRGBO(0, 0, 0, 1),
                                                  fontFamily: 'Baloo',
                                                  fontSize: 17,
                                                  letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                                  fontWeight: FontWeight.normal,
                                                  height: 1
                                              ),)
                                          ),
                                        ]
                                    )
                                )
                            ),Positioned(
                                top: 16,
                                left: 20,
                                child:  //Mask holder Template
                                Container(
                                  width: 63,
                                  height: 69,
                                  child: ClipOval(
                                    child: Stack(
                                        children: <Widget>[
                                          Positioned(
                                              top: -3.988380193710327,
                                              left: -21.48555564880371,
                                              child: Container(
                                                  width: 105.97109985351562,
                                                  height: 76.97689056396484,
                                                  decoration: BoxDecoration(
                                                    image : DecorationImage(
                                                        image: AssetImage('assets/images/Image2.png'),
                                                        fit: BoxFit.fitWidth
                                                    ),
                                                  )
                                              )
                                          ),
                                        ]
                                    ),
                                  ),
                                )
                            ),
                          ]
                      )
                  )
              ),Positioned(
                  top: 294,
                  left: 50,
                  child: Container(
                      width: 315,
                      height: 102,

                      child: Stack(
                          children: <Widget>[
                            Positioned(
                                top: 0,
                                left: 0,
                                child: Container(
                                    width: 315,
                                    height: 102,
                                    decoration: BoxDecoration(
                                      borderRadius : BorderRadius.only(
                                        topLeft: Radius.circular(20),
                                        topRight: Radius.circular(20),
                                        bottomLeft: Radius.circular(20),
                                        bottomRight: Radius.circular(20),
                                      ),
                                      boxShadow : [BoxShadow(
                                          color: Color.fromRGBO(0, 0, 0, 0.029999999329447746),
                                          offset: Offset(0,10),
                                          blurRadius: 40
                                      )],
                                      color : Color.fromRGBO(255, 255, 255, 1),
                                    )
                                )
                            ),Positioned(
                                top: 43,
                                left: 64,
                                child: Container(
                                    width: 16,
                                    height: 16,
                                    decoration: BoxDecoration(
                                      color : Color.fromRGBO(255, 255, 255, 1),
                                    ),
                                    child: Stack(
                                        children: <Widget>[
                                          Positioned(
                                              top: 2,
                                              left: 0,
                                              child: Container(
                                                  width: 16,
                                                  height: 12,

                                                  child: Stack(
                                                      children: <Widget>[
                                                        Positioned(
                                                            top: 0,
                                                            left: 0,
                                                            // child: SvgPicture.asset(
                                                            //     'assets/images/vector.svg',
                                                            //     semanticsLabel: 'vector'
                                                            // );
                                                        ),
                                                      ]
                                                  )
                                              )
                                          ),
                                        ]
                                    )
                                )
                            ),Positioned(
                                top: 31,
                                left: 103,
                                child: Text('Fish with mix orange....', textAlign: TextAlign.left, style: TextStyle(
                                    color: Color.fromRGBO(0, 0, 0, 1),
                                    fontFamily: 'Baloo',
                                    fontSize: 17,
                                    letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                    fontWeight: FontWeight.normal,
                                    height: 1
                                ),)
                            ),Positioned(
                                top: 16,
                                left: 17,
                                child:  //Mask holder Template
                                Container(
                                  width: 69.20712280273438,
                                  height: 69.20712280273438,
                                  child: ClipOval(
                                    child: Stack(
                                        children: <Widget>[
                                          Positioned(
                                              top: -4.000395774841309,
                                              left: -23.602420806884766,
                                              child: Container(
                                                  width: 116.41197967529297,
                                                  height: 77.20794677734375,
                                                  decoration: BoxDecoration(
                                                    image : DecorationImage(
                                                        image: AssetImage('assets/images/Image2.png'),
                                                        fit: BoxFit.fitWidth
                                                    ),
                                                  )
                                              )
                                          ),Positioned(
                                              top: -8,
                                              left: -30,
                                              child: Container(
                                                  width: 129,
                                                  height: 86,
                                                  decoration: BoxDecoration(
                                                    image : DecorationImage(
                                                        image: AssetImage('assets/images/Image3.png'),
                                                        fit: BoxFit.fitWidth
                                                    ),
                                                  )
                                              )
                                          ),
                                        ]
                                    ),
                                  ),
                                )
                            ),
                          ]
                      )
                  )
              ),Positioned(
                  top: 774,
                  left: 56,
                  child: Container(
                      width: 315,
                      height: 102,

                      child: Stack(
                          children: <Widget>[
                            Positioned(
                                top: 0,
                                left: 0,
                                child: Container(
                                    width: 315,
                                    height: 102,
                                    decoration: BoxDecoration(
                                      borderRadius : BorderRadius.only(
                                        topLeft: Radius.circular(20),
                                        topRight: Radius.circular(20),
                                        bottomLeft: Radius.circular(20),
                                        bottomRight: Radius.circular(20),
                                      ),
                                      boxShadow : [BoxShadow(
                                          color: Color.fromRGBO(0, 0, 0, 0.029999999329447746),
                                          offset: Offset(0,10),
                                          blurRadius: 40
                                      )],
                                      color : Color.fromRGBO(255, 255, 255, 1),
                                    )
                                )
                            ),Positioned(
                                top: 43,
                                left: 64,
                                child: Container(
                                    width: 16,
                                    height: 16,
                                    decoration: BoxDecoration(
                                      color : Color.fromRGBO(255, 255, 255, 1),
                                    ),
                                    child: Stack(
                                        children: <Widget>[
                                          Positioned(
                                              top: 2,
                                              left: 0,
                                              child: Container(
                                                  width: 16,
                                                  height: 12,

                                                  child: Stack(
                                                      children: <Widget>[
                                                        Positioned(
                                                            top: 0,
                                                            left: 0,
                                                            // child: SvgPicture.asset(
                                                            //     'assets/images/vector.svg',
                                                            //     semanticsLabel: 'vector'
                                                            // );
                                                        ),
                                                      ]
                                                  )
                                              )
                                          ),
                                        ]
                                    )
                                )
                            ),Positioned(
                                top: 31,
                                left: 103,
                                child: Text('Fish with mix orange....', textAlign: TextAlign.left, style: TextStyle(
                                    color: Color.fromRGBO(0, 0, 0, 1),
                                    fontFamily: 'Baloo',
                                    fontSize: 17,
                                    letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                    fontWeight: FontWeight.normal,
                                    height: 1
                                ),)
                            ),Positioned(
                                top: 16,
                                left: 17,
                                child:  //Mask holder Template
                                Container(
                                  width: 69.20712280273438,
                                  height: 69.20712280273438,
                                  child: ClipOval(
                                    child: Stack(
                                        children: <Widget>[
                                          Positioned(
                                              top: -4.000395774841309,
                                              left: -23.602420806884766,
                                              child: Container(
                                                  width: 116.41197967529297,
                                                  height: 77.20794677734375,
                                                  decoration: BoxDecoration(
                                                    image : DecorationImage(
                                                        image: AssetImage('assets/images/Image2.png'),
                                                        fit: BoxFit.fitWidth
                                                    ),
                                                  )
                                              )
                                          ),Positioned(
                                              top: -8,
                                              left: -30,
                                              child: Container(
                                                  width: 129,
                                                  height: 86,
                                                  decoration: BoxDecoration(
                                                    image : DecorationImage(
                                                        image: AssetImage('assets/images/Image3.png'),
                                                        fit: BoxFit.fitWidth
                                                    ),
                                                  )
                                              )
                                          ),
                                        ]
                                    ),
                                  ),
                                )
                            ),
                          ]
                      )
                  )
              ),Positioned(
                  top: 49,
                  left: 108,
                  child: Text('foods', textAlign: TextAlign.left, style: TextStyle(
                      color: Color.fromRGBO(0, 0, 0, 1),
                      fontFamily: 'Baloo',
                      fontSize: 36,
                      letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                      fontWeight: FontWeight.normal,
                      height: 1
                  ),)
              ),Positioned(
                  top: 60,
                  left: 41,
                  child: Container(
                      width: 24,
                      height: 24,
                      decoration: BoxDecoration(
                        color : Color.fromRGBO(255, 255, 255, 1),
                      ),
                      child: Stack(
                          children: <Widget>[
                            Positioned(
                                top: 6,
                                left: 9,
                                // child: SvgPicture.asset(
                                //     'assets/images/vector.svg',
                                //     semanticsLabel: 'vector'
                                // );
                            ),
                          ]
                      )
                  )
              ),Positioned(
                  top: 462,
                  left: 269,
                  child: Container(
                      width: 23,
                      height: 5,
                      decoration: BoxDecoration(
                        color : Color.fromRGBO(255, 255, 255, 1),
                      )
                  )
              ),Positioned(
                  top: 436,
                  left: 71,
                  child: Container(
                      width: 71,
                      height: 67,
                      decoration: BoxDecoration(
                        image : DecorationImage(
                            image: AssetImage('assets/images/Image3.png'),
                            fit: BoxFit.fitWidth
                        ),
                      )
                  )
              ),Positioned(
                  top: 665,
                  left: 72,
                  child:  //Mask holder Template
                  Container(
                    width: 71,
                    height: 64,
                    child: ClipOval(
                      child: Stack(
                          children: <Widget>[
                            Positioned(
                                top: -3.6994357109069824,
                                left: -24.21389389038086,
                                child: Container(
                                    width: 119.42774963378906,
                                    height: 71.39884948730469,
                                    decoration: BoxDecoration(
                                      image : DecorationImage(
                                          image: AssetImage('assets/images/Image2.png'),
                                          fit: BoxFit.fitWidth
                                      ),
                                    )
                                )
                            ),
                          ]
                      ),
                    ),
                  )
              ),
            ]
        )
    );
  }
}
        