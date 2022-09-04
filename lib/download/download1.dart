import 'package:direct_link/direct_link.dart';
import 'package:flutter/material.dart';

class Download1 extends StatefulWidget {
  const Download1({Key key}) : super(key: key);

  @override
  _Download1State createState() => _Download1State();
}

class _Download1State extends State<Download1> {
  void main() async {
    var check = await DirectLink.check(
        'https://www.youtube.com/watch?v=zxN2-yb743c'); // add your url

    check.forEach((element) {
      print(element.quality);
      print(element.link);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
