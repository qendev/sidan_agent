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
              Row(
                children: <Widget>[
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
                        margin: EdgeInsets.fromLTRB(16, 24, 0, 0),
                        child: Text(
                          'Hello James,',
                          style: Theme.of(context)
                              .textTheme
                              .headline
                              .apply(color: Colors.white),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(16, 0, 0, 0),
                        child: RaisedButton(
                          onPressed: () {},
                          color: Colors.green,
                          child: Text(
                            'AVAILABLE',
                            style: TextStyle(
                                color: Colors.white, letterSpacing: 2.5),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: Row(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 16, 0, 0),
                          padding: EdgeInsets.fromLTRB(2, 2, 2, 2),
                          decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.white,
                              ),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                          child: SizedBox(
                            width: 150,
                            height: 25,
                            child: Row(
                              children: <Widget>[
                                Container(
                                  padding: EdgeInsets.fromLTRB(16, 2, 0, 0),
                                  child: Image.asset('assets/Group.png'),
                                ),
                                Container(
                                    margin: EdgeInsets.fromLTRB(8, 0, 0, 2),
                                    child: Text(
                                      'Wash Hands',
                                      style: TextStyle(color: Colors.white),
                                    ))
                                // Container(
                                //   margin: EdgeInsets.fromLTRB(0, 16, 8, 0),
                                //   child: SizedBox(
                                //     width: 100,
                                //       height: 100,
                                //       child: Image.asset('assets/Group.png')),
                                // ),

                                // Text('Wash Clothes',style: TextStyle(
                                //   color: Colors.white
                                // ),)
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 16, 0, 0),
                          padding: EdgeInsets.fromLTRB(2, 2, 2, 2),
                          decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.white,
                              ),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                          child: SizedBox(
                            width: 150,
                            height: 25,
                            child: Row(
                              children: <Widget>[
                                Container(
                                  padding: EdgeInsets.fromLTRB(16, 2, 0, 0),
                                  child: Image.asset('assets/Group.png'),
                                ),
                                Container(
                                    margin: EdgeInsets.fromLTRB(8, 0, 0, 2),
                                    child: Text(
                                      'Wash Utensils',
                                      style: TextStyle(color: Colors.white),
                                    ))
                                // Container(
                                //   margin: EdgeInsets.fromLTRB(0, 16, 8, 0),
                                //   child: SizedBox(
                                //     width: 100,
                                //       height: 100,
                                //       child: Image.asset('assets/Group.png')),
                                // ),

                                // Text('Wash Clothes',style: TextStyle(
                                //   color: Colors.white
                                // ),)
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              //Served Amount Part
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.fromLTRB(8, 16, 0, 0),
                        child: Text(
                          'SERVED',
                          style: TextStyle(
                              color: Colors.white, letterSpacing: 2.5),
                        ),
                      ),
                      Row(
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 8, 0, 0),
                            child: Image.asset('assets/people.png'),
                          ),
                          Container(
                              margin: EdgeInsets.fromLTRB(8, 10, 0, 0),
                              child: Text(
                                '20',
                                style: TextStyle(
                                    color: Colors.yellow[700],
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 2.5),
                              ))
                        ],
                      )
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.fromLTRB(8, 16, 0, 0),
                        child: Text(
                          'AMOUNT',
                          style: TextStyle(
                              color: Colors.white, letterSpacing: 2.5),
                        ),
                      ),
                      Row(
                        children: <Widget>[
                          Container(
                              margin: EdgeInsets.fromLTRB(8, 10, 0, 0),
                              child: Text(
                                '20,000',
                                style: TextStyle(
                                    color: Colors.yellow[700],
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 2.5),
                              ))
                        ],
                      ),
                    ],
                  )
                ],
              ),
              Container(
                margin: EdgeInsets.fromLTRB(0, 24, 0, 0),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                  child: Container(
                    height: 1.0,
                    width: 330.0,
                    color: Colors.grey,
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  width: double.infinity,
                  margin: EdgeInsets.fromLTRB(0, 16, 0, 0),
                  child: DefaultTabController(length: 2, child: Scaffold(
                    appBar:
                       TabBar(tabs: [
                        Text('NOTIFICATIONS',style: TextStyle(color: Color(0xff006DFF),letterSpacing: 2.5),),
                        Text('SERVICES SERVED',style: TextStyle(color: Color(0xff006DFF),),)
                      ]),
                    body: TabBarView(children:[
                      Text('Notifications'),
                      Text('Services')

                    ]),
                    ),
                  ),
                )),
              ],
            )



          ),

          ),

        ),

    );
  }
}
