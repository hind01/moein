import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
//import 'file:///D:/flutter/mo3en/lib/ui/beneficiary/services_page.dart';
import 'services_page.dart';

class PrintClass extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new SignUpClassState();
  }
}

class SignUpClassState extends State<PrintClass> {
  TextEditingController phoneContrller = new TextEditingController();
  TextEditingController mobile = TextEditingController();
  bool _validate = false;
  bool seepass = true;
  bool passelc = true;
  bool mobileselc = true, mobilecheck = true, passcheck = true, selected = true;
  var firstinput = '',
      secondinput = '',
      myerror = '',
      myProvider,
      verificationId;
  String dropdownValue = 'Colored';
  final myController = TextEditingController();
  login() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue,
        title: Text(
          "Print",
          style: TextStyle(
              fontSize: 17, fontWeight: FontWeight.bold, color: Colors.white),
          textAlign: TextAlign.center,
        ),
      ),
      backgroundColor: Colors.white,
      body: Container(
        child: SingleChildScrollView(
          child: new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              new Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.all(15),
                    child: Text(
                      "Attach File",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(left: 25, right: 25),
                      padding: EdgeInsets.only(top: 20, bottom: 20),
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
                          elevation: 0,
                          hoverColor: Colors.white,
                          color: Colors.white,
                          child: Container(
                            padding: EdgeInsets.all(15),
                            child: Container(
                              padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                              child: Text(
                                "Sign/lllll/llllll/ooooooooo",
                                maxLines: 1,
                                style: TextStyle(
                                    color: Colors.blue,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        ServicesPage()));
                          },
                        ),
                      ),
                    ),
                  )
                ],
              ),
              Container(
                margin: EdgeInsets.all(15),
                child: Text(
                  "Number of copies",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 20, right: 20, bottom: 5),
                child: TextField(
                  autofocus: false,
                  // controller: phoneContrller,
                  keyboardType: TextInputType.number,
                  decoration: new InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    border: new OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(15),
                child: Text(
                  "Color",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.only(left: 20, right: 20, bottom: 5),
                padding: EdgeInsets.only(left: 5, right: 5, top: 5, bottom: 5),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey[600], width: 1),
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: DropdownButton<String>(
                  value: dropdownValue,
                  icon: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.grey,
                  ),
                  iconSize: 20,
                  style: TextStyle(color: Colors.grey),
                  autofocus: false,
                  isExpanded: true,
                  onChanged: (String newValue) {
                    setState(() {
                      dropdownValue = newValue;
                    });
                  },
                  items: <String>['Colored', 'BWA']
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 100, right: 100),
                padding: EdgeInsets.only(top: 70, bottom: 20),
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
                      child: Container(
                        padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                        child: Text(
                          "OK",
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
                              builder: (BuildContext context) =>
                                  ServicesPage()));
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
