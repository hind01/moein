import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'order_details.dart';

class ProviderOrdersPage extends StatefulWidget {
  @override
  _ProviderOrdersPageState createState() => new _ProviderOrdersPageState();
}

class _ProviderOrdersPageState extends State<ProviderOrdersPage> {
  @override
  void initState() {
    super.initState();

    // getUserDetails();
    _userDetails
        .add(OrderDetails("#1002", "Food", "assets/food.jpg", "Pending"));
    _userDetails.add(
        OrderDetails("#1003", "Library", "assets/library.jpeg", "Confirmed"));
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        backgroundColor: Colors.white,
        body: new Stack(alignment: Alignment.bottomRight, children: [
          Column(
            children: <Widget>[
              new Container(
                color: Theme.of(context).primaryColor,
                child: new Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.all(20),
                        ),
                        Center(
                            child: Padding(
                          padding: EdgeInsets.only(bottom: 10),
                          child: Text(
                            "Services",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        )),
                      ],
                    )),
              ),
              Container(
                child: Expanded(
                  child: new ListView.builder(
                    itemCount: _userDetails.length,
                    itemBuilder: (context, i) {
                      return new GestureDetector(
                        child: Card(
                          color: Colors.blueGrey,
                          margin: EdgeInsets.all(15),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          child: Container(
                            padding: EdgeInsets.all(20),
                            child: Column(
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    Expanded(
                                        child: Container(
                                      margin: EdgeInsets.all(10),
                                      child: Expanded(
                                        child: Text(
                                          _userDetails[i].id,
                                          style: TextStyle(
                                              color: Colors.blue,
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    )),
                                    Container(
                                      margin:
                                          EdgeInsets.only(top: 10, bottom: 20),
                                      child: Image.asset(
                                        _userDetails[i].orderImage,
                                        width: 120,
                                        height: 80,
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Expanded(
                                      child: Container(
                                        margin: EdgeInsets.all(10),
                                        child: Text(
                                          _userDetails[i].orderState,
                                          style: TextStyle(
                                              color: Colors.green,
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.all(10),
                                      child: Text(
                                        _userDetails[i].OrderType,
                                        style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      ProviderOrderDetails()));
                        },
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ]));
  }

  onSearchTextChanged(String text) async {
    _searchResult.clear();
    if (text.isEmpty) {
      setState(() {});
      return;
    }
    for (int i = 0; i < _userDetails.length; i++) {
      if (_userDetails[i].OrderType.toLowerCase().contains(text)) {
        _searchResult.add(_userDetails[i]);
      }
    }
    // _userDetails.forEach((userDetail) {
    //   if (userDetail.firstName.toLowerCase().contains(text) ||
    //       userDetail.lastName.toLowerCase().contains(text)) _searchResult.add(userDetail);
    // });

    setState(() {});
  }
}

List<OrderDetails> _searchResult = [];

List<OrderDetails> _userDetails = [];

final String url = 'https://jsonplaceholder.typicode.com/users';

class OrderDetails {
  String id;
  String OrderType, orderImage, orderState;

  // UserDetails({this.id,
  //   this.serviceName,
  //   this.serviceImage,
  // });
  OrderDetails(
      String id, String serviceName, String serviceImage, String orderstate) {
    this.id = id;
    this.OrderType = serviceName;
    this.orderImage = serviceImage;
    this.orderState = orderstate;
  }
  // factory UserDetails.fromJson(Map<String, dynamic> json) {
  //   return new UserDetails(
  //     id: json['id'],
  //     serviceName: json['name'],
  //     serviceImage: json['username'],
  //   );
  // }
}
