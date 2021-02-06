import 'dart:convert';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
//import 'file:///D:/flutter/mo3en/lib/ui/beneficiary/print_page.dart';
import 'print_page.dart';

import 'buy_page.dart';

class LibraryPage extends StatefulWidget {
  @override
  _LibraryPageState createState() => new _LibraryPageState();
}

class _LibraryPageState extends State<LibraryPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: new Text('Library order'),
        actions: [
          // action button
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {},
          ),
        ],
        leading: IconButton(
          icon: Icon(Icons.home),
          onPressed: () {},
        ),
      ),
      backgroundColor: Colors.white,
      body: Container(
          padding: EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(left: 25, right: 25),
                padding: EdgeInsets.only(top: 20, bottom: 20),
                width: double.infinity,
                child: ButtonTheme(
                  minWidth: 200.0,
                  height: 130,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                          topLeft: const Radius.circular(10.0),
                          topRight: const Radius.circular(10.0),
                          bottomLeft: const Radius.circular(10.0),
                          bottomRight: const Radius.circular(10.0)),
                      side: BorderSide(color: Colors.lightGreen)),
                  child: RaisedButton(
                    elevation: 5.0,
                    hoverColor: Colors.lightGreen,
                    color: Colors.lightGreen,
                    child: Container(
                      padding: EdgeInsets.all(15),
                      child: Container(
                        padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                        child: Text(
                          "Print",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) => PrintClass()));
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
                  height: 130,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                          topLeft: const Radius.circular(10.0),
                          topRight: const Radius.circular(10.0),
                          bottomLeft: const Radius.circular(10.0),
                          bottomRight: const Radius.circular(10.0)),
                      side: BorderSide(color: Colors.amberAccent)),
                  child: RaisedButton(
                    elevation: 5.0,
                    hoverColor: Colors.amberAccent,
                    color: Colors.amberAccent,
                    child: Container(
                      padding: EdgeInsets.all(15),
                      child: Container(
                        padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                        child: Text(
                          "Buy a book or school supplies",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) => BuyPage()));
                    },
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
