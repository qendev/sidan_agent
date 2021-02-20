import 'package:flutter/material.dart';
import 'package:dropdown_formfield/dropdown_formfield.dart';
import 'package:sidan_agent/DashBoard.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DetailsSignup(),
    ));

class DetailsSignup extends StatefulWidget {
  @override
  _DetailsSignupState createState() => _DetailsSignupState();
}

class _DetailsSignupState extends State<DetailsSignup> {
  String _myActivity;
  String _myActivityResult;
  final formKey = new GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    _myActivity = '';
    _myActivityResult = '';
  }

  _saveForm() {
    var form = formKey.currentState;
    if (form.validate()) {
      form.save();
      setState(() {
        _myActivityResult = _myActivity;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xff006DFF),
        ),
        child: ListView(
          children: [
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 40, 0, 0),
                        child: Text('SignUp To Sidan App',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18.0,
                            )),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 0, 280, 0),
                  child: SizedBox(
                    height: 80,
                    child: Image(
                      image: AssetImage('assets/worker.png'),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                  child: Row(
                    children: [
                      Text('Step 2/2',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18.0,
                          )),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(24, 16, 0, 0),
                  child: FractionallySizedBox(
                    child: Column(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            SizedBox(
                              width: 140,
                              height: 24,
                              child: RaisedButton(
                                color: Colors.yellow[700],
                                onPressed: () {},
                                child: Text(
                                  'Upload Face Photo',
                                  style: TextStyle(color: Colors.black),
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(32, 0, 0, 0),
                              child: CircleAvatar(
                                radius: 48.0,
                                backgroundImage:
                                    AssetImage('assets/profilepic.png'),
                              ),
                            ),
                          ],
                        ),
                        Container(
                          margin: EdgeInsetsDirectional.fromSTEB(0, 24, 0, 0),
                          child: Row(
                            children: <Widget>[
                              SizedBox(
                                width: 140,
                                height: 24,
                                child: RaisedButton(
                                  color: Colors.yellow[700],
                                  onPressed: () {},
                                  child: Text(
                                    'Upload ID Card',
                                    style: TextStyle(color: Colors.black),
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(32, 0, 0, 0),
                                child: Image.asset('assets/id.png'),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(20, 20, 20, 5),
                  child: TextField(
                    // controller: _passwordController,
                    obscureText: false,
                    keyboardType: TextInputType.number,
                    style: TextStyle(fontSize: 14, color: Colors.black),
                    decoration: InputDecoration(
                      // keyboardType: TextInputType.number,
                      border: new OutlineInputBorder(
                        borderRadius: const BorderRadius.all(
                          const Radius.circular(2.0),
                        ),
                        borderSide: BorderSide(
                          width: 0,
                          style: BorderStyle.none,
                        ),
                      ),
                      // prefixIcon: Icon(Icons.person),
                      hintText: "Id No",
                      hintStyle: TextStyle(color: Colors.grey.shade800),
                      filled: true,
                      fillColor: Colors.white,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(20, 20, 20, 5),
                  key: formKey,
                  child: Container(
                    color: Colors.white,
                    child: DropDownFormField(
                      hintText: 'Language',
                      titleText: 'Choose Language',

                      value: _myActivity,
                      onSaved: (value) {
                        setState(() {
                          _myActivity = value;
                        });
                      },
                      onChanged: (value) {
                        setState(() {
                          _myActivity = value;
                        });
                      },
                      dataSource: [
                        {
                          "display": "English",
                          "value": "English",
                        },
                        {
                          "display": "Kiswahili",
                          "value": "Kiswahili",
                        },
                      ],
                      textField: 'display',
                      valueField: 'value',

                      // controller: _passwordController,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(20, 20, 20, 5),
                  child: TextField(
                    // controller: _passwordController,
                    obscureText: false,
                    style: TextStyle(fontSize: 14, color: Colors.black),
                    decoration: InputDecoration(
                      // keyboardType: TextInputType.number,
                      border: new OutlineInputBorder(
                        borderRadius: const BorderRadius.all(
                          const Radius.circular(2.0),
                        ),
                        borderSide: BorderSide(
                          width: 0,
                          style: BorderStyle.none,
                        ),
                      ),
                      // prefixIcon: Icon(Icons.email),
                      hintText: "Police Abstarct",
                      hintStyle: TextStyle(color: Colors.grey.shade800),
                      filled: true,
                      fillColor: Colors.white,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(20, 20, 20, 5),
                  child: TextField(
                    // controller: _passwordController,
                    obscureText: false,
                    keyboardType: TextInputType.number,
                    style: TextStyle(fontSize: 14, color: Colors.black),
                    decoration: InputDecoration(
                      // keyboardType: TextInputType.number,
                      border: new OutlineInputBorder(
                        borderRadius: const BorderRadius.all(
                          const Radius.circular(2.0),
                        ),
                        borderSide: BorderSide(
                          width: 0,
                          style: BorderStyle.none,
                        ),
                      ),
                      // prefixIcon: Icon(Icons.vpn_key),
                      hintText: "Phone Number",
                      hintStyle: TextStyle(color: Colors.grey.shade800),
                      filled: true,
                      fillColor: Colors.white,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(20, 30, 20, 20),
                  child: SizedBox(
                    width: 320.0,
                    height: 50.0,
                    child: RaisedButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(1.0),
                      ),
                      color: Color(0xffFFA451),
                      onPressed: () async {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => DashBoard()),
                        );
                        _saveForm;
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('SIGN UP',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 17.0,
                              )),
                          Icon(
                            Icons.keyboard_arrow_right,
                            color: Colors.white,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.all(16),
              child: Text(_myActivityResult),
            )
          ],
        ),
      ),
    );
  }
}
