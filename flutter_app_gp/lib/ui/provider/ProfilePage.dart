// import 'file:///D:/flutter/a3tal/lib/temp/MapView.dart';
//
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
//
// class Lost_people_widget extends StatefulWidget {
//   @override
//   State<StatefulWidget> createState() {
//     // TODO: implement createState
//     return new Lost_people_widgetState();
//   }
// }
//
// class Lost_people_widgetState extends State<Lost_people_widget> {
//   TextEditingController _textController = TextEditingController();
//   static List<String> mainDataList = [
//     "Apple",
//     "Apricot",
//     "Banana",
//     "Blackberry",
//     "Coconut",
//     "Date",
//     "Fig",
//     "Gooseberry",
//     "Grapes",
//     "Lemon",
//     "Litchi",
//     "Mango",
//     "Orange",
//     "Papaya",
//     "Peach",
//     "Pineapple",
//     "Pomegranate",
//     "Starfruit"
//   ];
//   // Copy Main List into New List.
//   List<String> newDataList = List.from(mainDataList);
//
//   onItemChanged(String value) {
//     setState(() {
//       newDataList = mainDataList
//           .where((string) => string.toLowerCase().contains(value.toLowerCase()))
//           .toList();
//     });
//   }
//
//
//
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return new Scaffold(
//       backgroundColor: Colors.white,
//       body: Container(
//         color: Colors.white,
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             Text(
//               "المفقودين",
//               style: TextStyle(
//                   color: Colors.purple,
//                   fontSize: 17,
//                   fontWeight:
//                   FontWeight.bold),
//             ),
//             Padding(
//               padding: const EdgeInsets.all(12.0),
//               child: TextField(
//                 controller: _textController,
//                 decoration: InputDecoration(
//                   hintText: 'Search Here...',
//                 ),
//                 onChanged: onItemChanged,
//               ),
//             ),
//             Expanded(
//               child: ListView(
//                 padding: EdgeInsets.all(12.0),
//                 children: newDataList.map((data) {
//                   return ListTile(
//                     title: Text(data),
//
//                     onTap: ()=> print(data),);
//                 }).toList(),
//               ),
//             )
//           ],
//         )
//       ),
//     );
//   }
// }

import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => new _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.white12,
      body: new Container(
        color: Colors.transparent,
        child: new Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(15),
                ),
                Center(
                  //Makes it usable on any background color, thanks @IanSmith
                  child: GestureDetector(
                      onTap: () {},
                      child: CircleAvatar(
                        radius: 72,
                        backgroundColor: Colors.amber[800],
                        child: CircleAvatar(
                          radius: 70,
                          backgroundColor: Colors.white,
                          backgroundImage: AssetImage('assets/child.png'),
                        ),
                      )),
                ),
                Center(
                    child: Text(
                  "Hind Al Harbi",
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                )),
                Center(
                    child: Text(
                  "eng_hinddi@taibahu.edu.sa",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 13,
                  ),
                  textAlign: TextAlign.center,
                )),
                Padding(
                  padding: EdgeInsets.only(bottom: 40),
                ),
                Card(
                  child: Padding(
                      padding: EdgeInsets.all(20),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: <Widget>[
                            Container(
                              width: MediaQuery.of(context).size.width,
                              child: GestureDetector(
                                  onTap: () {
                                    // Navigator.push(context,
                                    //     MaterialPageRoute(
                                    //         builder: (BuildContext context) =>
                                    //             TTV_Page()));
                                  },
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: <Widget>[
                                      Expanded(
                                        child: Container(
                                          // padding: EdgeInsets.fromLTRB(4, 0, 0, 0),
                                          padding: EdgeInsets.only(
                                              left: 5, right: 5),
                                          child: Text(
                                            '100 Point ',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 17,
                                                fontWeight: FontWeight.bold),
                                            textAlign: TextAlign.right,
                                          ),
                                        ),
                                      ),
                                      Icon(
                                        Icons.content_paste,
                                        color: Colors.amber[800],
                                      ),
                                    ],
                                  )),
                            ),
                            Container(
                              height: 1.5,
                              margin: EdgeInsets.only(bottom: 15, top: 15),
                              color: Colors.grey,
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width,
                              child: GestureDetector(
                                  onTap: () {
                                    // Navigator.push(context,
                                    //     MaterialPageRoute(
                                    //         builder: (BuildContext context) =>
                                    //             Adds()));
                                  },
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: <Widget>[
                                      Expanded(
                                        child: Container(
                                          // padding: EdgeInsets.fromLTRB(4, 0, 0, 0),
                                          padding: EdgeInsets.only(
                                              left: 5, right: 5),
                                          child: Text(
                                            'إعدادت الحساب',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 17,
                                                fontWeight: FontWeight.bold),
                                            textAlign: TextAlign.right,
                                          ),
                                        ),
                                      ),
                                      Icon(
                                        Icons.settings,
                                        color: Colors.amber[800],
                                      ),
                                    ],
                                  )),
                            ),
                            Container(
                              height: 1.5,
                              margin: EdgeInsets.only(bottom: 15, top: 15),
                              color: Colors.grey,
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width,
                              margin: EdgeInsets.only(bottom: 5),
                              child: GestureDetector(
                                  onTap: () {},
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: <Widget>[
                                      Expanded(
                                        child: Container(
                                          // padding: EdgeInsets.fromLTRB(4, 0, 0, 0),
                                          padding: EdgeInsets.only(
                                              left: 5, right: 5),
                                          child: Text(
                                            'تسجيل الخروج',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 17,
                                                fontWeight: FontWeight.bold),
                                            textAlign: TextAlign.right,
                                          ),
                                        ),
                                      ),
                                      Icon(
                                        Icons.exit_to_app,
                                        color: Colors.amber[800],
                                      ),
                                    ],
                                  )),
                            ),
                          ])),
                  color: Colors.blue,
                )
              ],
            )),
      ),
    );
  }
}
