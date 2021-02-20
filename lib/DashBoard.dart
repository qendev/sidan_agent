import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DashBoard(),
    ));

class DashBoard extends StatefulWidget {
  @override
  _DashBoardState createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xff006DFF),
        ),
        child: Padding(
          padding: EdgeInsets.fromLTRB(24, 56, 0, 0),
          child: SafeArea(
              child: Column(children: [
            Row(children: <Widget>[
              Column(
                children: <Widget>[
                  CircleAvatar(
                    radius: 48.0,
                    backgroundImage: AssetImage('assets/active1.png'),
                  ),
                  Container(
                      margin: EdgeInsets.fromLTRB(0, 8, 0, 0),
                      child: Text(
                        'ACTIVE',
                        style: TextStyle(color: Colors.green),
                      ))
                ],
              ),
              Column(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.fromLTRB(16, 40, 0, 0),
                    child: Text(
                      'Hello James,',
                      style: Theme.of(context)
                          .textTheme
                          .headline
                          .apply(color: Colors.white),
                    ),
                  ),
                  RaisedButton(onPressed: (){},
                    color: Colors.green,
                  child: Text(
                    'AVAILABLE',style:
                  TextStyle(color: Colors.white,letterSpacing: 2.5),

                  ),
                  ),
                  Row(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                          child: Image.asset('assets/Group.png'))

                    ],
                  )
                ],
              )
            ])
          ])),
        ),
      ),
    );
  }
}
