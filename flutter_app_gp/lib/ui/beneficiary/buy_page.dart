import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
//import 'file:///D:/flutter/mo3en/lib/ui/beneficiary/services_page.dart';
import 'services_page.dart';

class BuyPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new BuyPageState();
  }
}

class BuyPageState extends State<BuyPage> {
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
          "Buy",
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
              Container(
                margin:
                    EdgeInsets.only(top: 100, left: 20, right: 20, bottom: 5),
                padding: EdgeInsets.only(left: 20, right: 20, bottom: 5),
                width: MediaQuery.of(context).size.width - 40,
                child: TextFormField(
                  controller: mobile,

                  decoration: InputDecoration(
                    filled: true,
                    enabled: true,
                    fillColor: Colors.white,
                    contentPadding: new EdgeInsets.symmetric(
                        vertical: 100.0, horizontal: 10.0),
                    border: new OutlineInputBorder(
                        borderSide: new BorderSide(color: Colors.teal),
                        borderRadius: BorderRadius.circular(10)),
                    labelText: 'Book Name*',
                    labelStyle: TextStyle(fontSize: 14),
                    counterText: '',
                    helperStyle: TextStyle(fontSize: 14),
                    counterStyle: TextStyle(fontSize: 0),
                    suffixIcon: mobilecheck
                        ? null
                        : Container(
                            child: Icon(
                              Icons.error,
                              color: HexColor('#0095FF'),
                            ),
                          ),
                  ),
                  // style:  GoogleFonts.almarai( fontWeight:FontWeight.bold,color: HexColor('#000000'),fontSize: 32.sp,),
                  onTap: () {
                    setState(() {
                      mobileselc = false;
                      mobilecheck = true;
                    });
                  },
                  onChanged: (value) {
                    setState(() {
                      firstinput = value;
                      if (value.isNotEmpty) {
                        mobileselc = false;
                      } else {
                        mobileselc = true;
                      }
                    });
                  },
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
                          "Buy",
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
