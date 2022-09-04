import 'package:flutter/material.dart';

import 'package:project1/mainpage2.dart';

class Welcome extends StatefulWidget {
  const Welcome({Key key}) : super(key: key);

  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  var _h1;
  var _w1;

  @override
  Widget build(BuildContext context) {
    _h1 = MediaQuery.of(context).size.height;
    _w1 = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [
              Colors.black,
              Colors.blue,
            ],
                stops: [
              0.0,
              1.0
            ],
                begin: FractionalOffset.topCenter,
                end: FractionalOffset.bottomCenter,
                tileMode: TileMode.repeated)),
        width: double.infinity,
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Padding(
                padding: EdgeInsets.only(top: _h1 * 0.15),
                child: Text(
                  'SAVE YOUTUBE\n      SHORTS \n   WITH EASE',
                  style: TextStyle(
                      fontSize: 40,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Stack(fit: StackFit.expand, children: [
                Positioned.fill(
                  child: Image.asset(
                    'assets/images/blueDesign.png',
                    fit: BoxFit.fill,
                  ),
                ),
                InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => MainPage2()),
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 60, right: 50),
                      child: Align(
                          alignment: Alignment.bottomRight,
                          child: Container(
                              height: 80,
                              child: Image.asset(
                                'assets/images/nextArrow.png',
                                fit: BoxFit.fill,
                              ))),
                    )),
              ]),
            )
          ],
        ),
      ),
    );
  }
}
