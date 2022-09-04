import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainPage2 extends StatefulWidget {
  const MainPage2({Key key}) : super(key: key);

  @override
  _MainPage2State createState() => _MainPage2State();
}

var _h2;
var _w2;

class _MainPage2State extends State<MainPage2> {
  @override
  Widget build(BuildContext context) {
    _h2 = MediaQuery.of(context).size.height;
    _w2 = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        height: _h2,
        width: _w2,
        decoration: BoxDecoration(
            color: Color(0xFFF89580),
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
        child: Padding(
          padding: EdgeInsets.only(left: 0.07 * _w2, right: 0.07 * _w2),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                'Paste Your Link Here',
                style: TextStyle(color: Colors.white, fontSize: 38),
              ),
              TextField(
                decoration: const InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white, width: 2.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Colors.lightBlue, width: 3.0),
                    ),
                    hintText: 'Enter a search term',
                    hintStyle: TextStyle(color: Colors.white)),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CircleAvatar(
                    maxRadius: 12,
                    backgroundColor: Colors.black,
                  ),
                  Text(
                    'Wait we are fetching data',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold),
                  ),
                  CircleAvatar(
                    maxRadius: 12,
                    backgroundColor: Colors.black,
                  ),
                ],
              ),
              ElevatedButton(
                style: ButtonStyle(
                    shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(side: BorderSide(width: 4))),
                    backgroundColor: MaterialStateProperty.all(Colors.purple),
                    fixedSize: MaterialStateProperty.all(Size(_w2, 60))),
                onPressed: null,
                child: const Text(
                  'Download',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                  ),
                ),
              ),
            ],
          ),
        ),
        
      ),
    );
  }
}
// backgroundColor: Color(0xFFF89580),