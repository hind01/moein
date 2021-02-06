import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class FoodPage extends StatefulWidget {
  @override
  _FoodPageState createState() => new _FoodPageState();
}

class _FoodPageState extends State<FoodPage> {
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
    _userDetails.add(OrderDetails(1, "Restaurant", "assets/food.jpg"));
    _userDetails.add(OrderDetails(2, "Cafe", "assets/coffee.jpg"));
    _userDetails.add(OrderDetails(3, "Cafe2", "assets/library.jpeg"));
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: new Text('Orders'),
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
        child: GridView.builder(
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 200,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10),
            itemCount: _userDetails.length,
            itemBuilder: (BuildContext ctx, index) {
              return Container(
                  alignment: Alignment.center,
                  child: Column(children: <Widget>[
                    ClipRRect(
                      borderRadius: BorderRadius.circular(15.0),
                      child: Image.asset(
                        _userDetails[index].serviceImage,
                        height: 140.0,
                        fit: BoxFit.fill,
                      ),
                    ),
                    Text(
                      _userDetails[index].orderName,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ]));
            }),
      ),
    );
  }

  onSearchTextChanged(String text) async {
    _searchResult.clear();
    if (text.isEmpty) {
      setState(() {});
      return;
    }
    for (int i = 0; i < _userDetails.length; i++) {
      if (_userDetails[i].orderName.toLowerCase().contains(text)) {
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
  int id;
  String orderName, serviceImage;

  // UserDetails({this.id,
  //   this.serviceName,
  //   this.serviceImage,
  // });
  OrderDetails(int id, String serviceName, String serviceImage) {
    this.id = id;
    this.orderName = serviceName;
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
