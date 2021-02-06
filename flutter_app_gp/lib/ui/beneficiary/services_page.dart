import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:http/http.dart' as http;
//import 'file:///D:/flutter/mo3en/lib/ui/beneficiary/Food_page.dart';
//import 'file:///D:/flutter/mo3en/lib/ui/beneficiary/library_page.dart';
import 'library_page.dart';
import 'Food_page.dart';

class ServicesPage extends StatefulWidget {
  @override
  _ServicesPageState createState() => new _ServicesPageState();
}

class _ServicesPageState extends State<ServicesPage> {
  TextEditingController controller = new TextEditingController();
  String dropdownValue = 'One';
  // Get json result and convert it to model. Then add
  // Future<Null> getUserDetails() async {
  //   final response = await http.get(url);
  //   final responseJson = json.decode(response.body);
  //
  //   setState(() {
  //     for (Map user in responseJson) {
  //       _userDetails.add(UserDetails.fromJson(user));
  //     }
  //   });
  // }

  @override
  void initState() {
    super.initState();

    // getUserDetails();
    _userDetails.add(UserDetails(1, "Food", "assets/food.jpg"));
    _userDetails.add(UserDetails(2, "Library", "assets/library.jpeg"));
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
                        Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          child: new ListTile(
                            title: new TextField(
                              controller: controller,
                              style: TextStyle(fontSize: 17),
                              decoration: new InputDecoration(
                                  hintText: 'search', border: InputBorder.none),
                              onChanged: onSearchTextChanged,
                            ),
                            leading: new Icon(
                              Icons.search,
                              size: 25,
                            ),
                            trailing: new IconButton(
                              icon: new Icon(Icons.cancel),
                              onPressed: () {
                                controller.clear();
                                onSearchTextChanged('');
                              },
                              iconSize: 25,
                            ),
                          ),
                        ),
                      ],
                    )),
              ),
              Container(
                child: Expanded(
                  child: _searchResult.length != 0 || controller.text.isNotEmpty
                      ? new ListView.builder(
                          itemCount: _searchResult.length,
                          itemBuilder: (context, i) {
                            return new GestureDetector(
                              child: Container(
                                  child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Container(
                                    margin: EdgeInsets.all(10),
                                    child: Text(
                                      _searchResult[i].serviceName,
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),

                                  Container(
                                    margin:
                                        EdgeInsets.only(top: 10, bottom: 20),
                                    child: Image.asset(
                                      _searchResult[i].serviceImage,
                                      width:
                                          (MediaQuery.of(context).size.width),
                                      height: 200,
                                      fit: BoxFit.fill,
                                    ),
                                  ) // leading: new CircleAvatar(backgroundImage: new NetworkImage(_searchResult[i].profileUrl,),),
                                ],
                              )),
                              onTap: () {},
                            );
                          },
                        )
                      : new ListView.builder(
                          itemCount: _userDetails.length,
                          itemBuilder: (context, i) {
                            return new GestureDetector(
                              child: Container(
                                  child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Container(
                                    margin: EdgeInsets.all(10),
                                    child: Text(
                                      _userDetails[i].serviceName,
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Container(
                                    margin:
                                        EdgeInsets.only(top: 10, bottom: 20),
                                    child: Image.asset(
                                      _userDetails[i].serviceImage,
                                      width:
                                          (MediaQuery.of(context).size.width),
                                      height: 200,
                                      fit: BoxFit.fill,
                                    ),
                                  )
                                ],
                              )),
                              onTap: () {
                                if (i == 0) {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (BuildContext context) =>
                                              FoodPage()));
                                }
                                if (i == 1) {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (BuildContext context) =>
                                              LibraryPage()));
                                }
                              },
                            );
                          },
                        ),
                ),
              ),
            ],
          ),
          Container(
              child: SvgPicture.asset(
                "assets/chat2.svg",
                color: Colors.blue,
                semanticsLabel: 'Acme Logo',
                width: 70,
                height: 70,
              ),
              margin: EdgeInsets.all(15))
        ]));
  }

  onSearchTextChanged(String text) async {
    _searchResult.clear();
    if (text.isEmpty) {
      setState(() {});
      return;
    }
    for (int i = 0; i < _userDetails.length; i++) {
      if (_userDetails[i].serviceName.toLowerCase().contains(text)) {
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

List<UserDetails> _searchResult = [];

List<UserDetails> _userDetails = [];

final String url = 'https://jsonplaceholder.typicode.com/users';

class UserDetails {
  int id;
  String serviceName, serviceImage;

  // UserDetails({this.id,
  //   this.serviceName,
  //   this.serviceImage,
  // });
  UserDetails(int id, String serviceName, String serviceImage) {
    this.id = id;
    this.serviceName = serviceName;
    this.serviceImage = serviceImage;
  }
  // factory UserDetails.fromJson(Map<String, dynamic> json) {
  //   return new UserDetails(
  //     id: json['id'],
  //     serviceName: json['name'],
  //     serviceImage: json['username'],
  //   );
  // }
}
