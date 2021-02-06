import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'beneficiary_home.dart';
//import 'file:///D:/flutter/mo3en/lib/ui/beneficiary/services_page.dart';
import 'services_page.dart';

class SignUp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new SignUpClassState();
  }
}

class SignUpClassState extends State<SignUp> {
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
  String dropdownValue = 'One';
  final myController = TextEditingController();
  login() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
        title: Text(
          "Sign Up",
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
              Padding(
                padding: EdgeInsets.only(top: 40, bottom: 20),
                child: Center(
                  child: Text(
                    "Beneficiary",
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              new Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    width: (MediaQuery.of(context).size.width / 2.0) - 30,
                    margin: EdgeInsets.all(15),
                    child: TextFormField(
                      controller: mobile,
                      decoration: InputDecoration(
                        filled: true,
                        enabled: true,
                        fillColor: Colors.white,
                        border: new OutlineInputBorder(
                            borderSide: new BorderSide(color: Colors.teal),
                            borderRadius: BorderRadius.circular(10)),

                        labelText: 'First Name*',
                        labelStyle: TextStyle(fontSize: 14),
                        counterText: '',
                        counterStyle: TextStyle(fontSize: 0),
                        prefixIcon: Icon(
                          Icons.account_circle_outlined,
                          textDirection: TextDirection.rtl,
                        ),

                        // labelStyle:  GoogleFonts.almarai( fontWeight: FontWeight.bold,color: HexColor('#8F9BB3'),fontSize:mobileselc? 25.sp:10.sp,),
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
                    width: (MediaQuery.of(context).size.width / 2.0) - 30,
                    margin: EdgeInsets.all(15),
                    child: TextFormField(
                      controller: mobile,
                      decoration: InputDecoration(
                        filled: true,
                        enabled: true,
                        fillColor: Colors.white,
                        border: new OutlineInputBorder(
                            borderSide: new BorderSide(color: Colors.teal),
                            borderRadius: BorderRadius.circular(10)),

                        labelText: 'Last Name*',
                        labelStyle: TextStyle(fontSize: 14),
                        counterText: '',
                        counterStyle: TextStyle(fontSize: 0),
                        prefixIcon: Icon(
                          Icons.account_circle_outlined,
                          textDirection: TextDirection.rtl,
                        ),

                        // labelStyle:  GoogleFonts.almarai( fontWeight: FontWeight.bold,color: HexColor('#8F9BB3'),fontSize:mobileselc? 25.sp:10.sp,),
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
                ],
              ),
              Container(
                margin: EdgeInsets.all(15),
                child: TextFormField(
                  controller: mobile,
                  decoration: InputDecoration(
                    filled: true,
                    enabled: true,
                    fillColor: Colors.white,
                    border: new OutlineInputBorder(
                        borderSide: new BorderSide(color: Colors.teal),
                        borderRadius: BorderRadius.circular(10)),

                    labelText: 'University ID*',
                    counterText: '',
                    counterStyle: TextStyle(fontSize: 0),
                    prefixIcon: Icon(
                      Icons.credit_card_rounded,
                      textDirection: TextDirection.rtl,
                    ),

                    // labelStyle:  GoogleFonts.almarai( fontWeight: FontWeight.bold,color: HexColor('#8F9BB3'),fontSize:mobileselc? 25.sp:10.sp,),
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
                margin: EdgeInsets.all(15),
                child: TextFormField(
                  controller: mobile,
                  decoration: InputDecoration(
                    filled: true,
                    enabled: true,
                    fillColor: Colors.white,
                    border: new OutlineInputBorder(
                        borderSide: new BorderSide(color: Colors.teal),
                        borderRadius: BorderRadius.circular(10)),

                    labelText: 'University Email*',
                    counterText: '',
                    counterStyle: TextStyle(fontSize: 0),
                    prefixIcon: Icon(
                      Icons.mail,
                      textDirection: TextDirection.rtl,
                    ),

                    // labelStyle:  GoogleFonts.almarai( fontWeight: FontWeight.bold,color: HexColor('#8F9BB3'),fontSize:mobileselc? 25.sp:10.sp,),
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
                margin: EdgeInsets.all(15),
                child: TextFormField(
                  controller: mobile,
                  decoration: InputDecoration(
                    filled: true,
                    enabled: true,
                    fillColor: Colors.white,
                    border: new OutlineInputBorder(
                        borderSide: new BorderSide(color: Colors.teal),
                        borderRadius: BorderRadius.circular(10)),

                    labelText: 'Phone*',
                    counterText: '',
                    counterStyle: TextStyle(fontSize: 0),
                    prefixIcon: Icon(
                      Icons.phone,
                      textDirection: TextDirection.rtl,
                    ),

                    // labelStyle:  GoogleFonts.almarai( fontWeight: FontWeight.bold,color: HexColor('#8F9BB3'),fontSize:mobileselc? 25.sp:10.sp,),
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
              new Container(
                margin: EdgeInsets.all(15),
                child: TextFormField(
                  // textAlign: TextAlign.right,
                  // textDirection: TextDirection.rtl,
                  obscureText: seepass ? true : false,

                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    border: new OutlineInputBorder(
                        borderSide: new BorderSide(color: Colors.teal),
                        borderRadius: BorderRadius.circular(10)),
                    labelText: 'Password*',
                    prefixIcon: InkWell(
                      child: Icon(
                        seepass ? Icons.lock_outline : Icons.lock_open,
                        textDirection: TextDirection.rtl,
                      ),
                      onTap: () {
                        setState(() {
                          if (seepass == false)
                            seepass = true;
                          else
                            seepass = false;
                        });
                      },
                    ),
                    suffixIcon: passcheck
                        ? null
                        : Container(
                            child: Icon(
                              Icons.error,
                              color: HexColor('#0095FF'),
                            ),
                          ),
                    enabled: true,
                  ),
                  // style:  GoogleFonts.almarai( color: HexColor('#000000'),fontSize: 32.sp,),
                  onTap: () {
                    setState(() {
                      passelc = false;
                      passcheck = true;
                    });
                  },
                  onChanged: (value) {
                    setState(() {
                      secondinput = value;
                      if (value.isNotEmpty) {
                        passelc = false;
                      } else {
                        passelc = true;
                      }
                    });
                  },
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
                      child: Container(
                        padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                        child: Text(
                          "Sign Up",
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
                                  BenidiciaryHome()));
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
