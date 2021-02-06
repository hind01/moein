import 'package:flutter/material.dart';
//import 'file:///D:/flutter/mo3en/lib/ui/beneficiary/signup_page.dart';
//import 'file:///D:/flutter/mo3en/lib/ui/provider/signup_provider_page.dart';
import 'package:flutter_app_gp/ui/provider/signup_provider_page.dart';
import 'package:flutter_app_gp/ui/beneficiary/signup_page.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 100, bottom: 40),
            child: Image.asset(
              'assets/logo.jpeg',
              width: 200,
              height: 200,
              fit: BoxFit.fill,
            ),
          ),
          // Container(
          //   margin: EdgeInsets.all(20),
          //   child: Text(
          //   "مُعيــن",
          //   style: TextStyle(
          //       fontSize: 40,
          //       fontWeight: FontWeight.bold,
          //     color: Colors.blue[400]
          //   ),
          //   textAlign: TextAlign.center,
          // )
          // ),

          Container(
            margin: EdgeInsets.only(left: 25, right: 25),
            padding: EdgeInsets.only(top: 20, bottom: 20),
            width: double.infinity,
            child: ButtonTheme(
              minWidth: 200.0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      topLeft: const Radius.circular(10.0),
                      topRight: const Radius.circular(10.0),
                      bottomLeft: const Radius.circular(10.0),
                      bottomRight: const Radius.circular(10.0)),
                  side: BorderSide(color: Colors.blue)),
              child: RaisedButton(
                elevation: 5.0,
                hoverColor: Colors.blue,
                color: Colors.blue,
                child: Container(
                    padding: EdgeInsets.all(15),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                            child: Text(
                              "Beneficiary",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        Container(
                          alignment: Alignment.centerRight,
                          // padding: EdgeInsets.fromLTRB(4, 0, 0, 0),

                          child: Icon(
                            Icons.arrow_forward,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    )),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => SignUp()));
                },
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 25, right: 25),
            padding: EdgeInsets.only(top: 20, bottom: 20),
            width: double.infinity,
            child: ButtonTheme(
              minWidth: 200.0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      topLeft: const Radius.circular(10.0),
                      topRight: const Radius.circular(10.0),
                      bottomLeft: const Radius.circular(10.0),
                      bottomRight: const Radius.circular(10.0)),
                  side: BorderSide(color: Colors.blue)),
              child: RaisedButton(
                elevation: 5.0,
                hoverColor: Colors.blue,
                color: Colors.blue,
                child: Container(
                    padding: EdgeInsets.all(15),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                            child: Text(
                              "Service provider",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        Container(
                          alignment: Alignment.centerRight,
                          // padding: EdgeInsets.fromLTRB(4, 0, 0, 0),

                          child: Icon(
                            Icons.arrow_forward,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    )),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => SignUpProvider()));
                },
              ),
            ),
          ),

          Container(
            margin: EdgeInsets.only(left: 25, right: 25),
            padding: EdgeInsets.only(top: 20, bottom: 20),
            width: double.infinity,
            child: ButtonTheme(
              minWidth: 200.0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      topLeft: const Radius.circular(10.0),
                      topRight: const Radius.circular(10.0),
                      bottomLeft: const Radius.circular(10.0),
                      bottomRight: const Radius.circular(10.0)),
                  side: BorderSide(color: Colors.blue)),
              child: RaisedButton(
                elevation: 5.0,
                hoverColor: Colors.blue,
                color: Colors.blue,
                child: Container(
                    padding: EdgeInsets.all(15),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                            child: Text(
                              "Admin",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        Container(
                          alignment: Alignment.centerRight,
                          // padding: EdgeInsets.fromLTRB(4, 0, 0, 0),

                          child: Icon(
                            Icons.arrow_forward,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    )),
                onPressed: () {},
              ),
            ),
          ),
        ],
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
