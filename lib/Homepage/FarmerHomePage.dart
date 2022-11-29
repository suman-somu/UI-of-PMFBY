import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FarmerHome extends StatefulWidget {
  const FarmerHome({Key? key}) : super(key: key);

  @override
  _FarmerHomeState createState() => _FarmerHomeState();
}

class _FarmerHomeState extends State<FarmerHome> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Colors.white,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.message),
        onPressed: () {
          print('FloatingActionButton pressed ...');
        },
        backgroundColor: Colors.lightBlueAccent,
        elevation: 0,
      ),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: AppBar(
          backgroundColor: Color(0xFFE2E0EC),
          automaticallyImplyLeading: false,
          title: Align(
            alignment: AlignmentDirectional(-0.05, -0.05),
            child: Text('PMFBY',
                style: TextStyle(
                    fontSize: 25,
                    fontFamily: GoogleFonts.poppins().fontFamily,
                    color: Colors.black)),
          ),
          actions: [],
          centerTitle: true,
          elevation: 0,
        ),
      ),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              SizedBox(height: 25, width: 25),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: () {},
                      child: Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                          color: Color(0xFFA4BE7B),
                          borderRadius: BorderRadius.circular(25),
                          shape: BoxShape.rectangle,
                        ),
                        child: Align(
                          alignment: AlignmentDirectional(0, 0),
                          child: Text(
                            'Track Your Application',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 25,
                                fontFamily: GoogleFonts.poppins().fontFamily,
                                color: Colors.black),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 25, width: 25),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: () {},
                      child: Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                          color: Color(0xFF5F8D4E),
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: Align(
                          alignment: AlignmentDirectional(0, 0),
                          child: Text(
                            'See Your Current Isurance',
                            style: TextStyle(
                                fontSize: 25,
                                fontFamily: GoogleFonts.poppins().fontFamily,
                                color: Colors.black),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 25, width: 25),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: () {},
                      child: Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                          color: Color(0xFF90A17D),
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: Align(
                          alignment: AlignmentDirectional(0.05, 0),
                          child: Text(
                            'Weather Forecast',
                            style: TextStyle(
                                fontSize: 25,
                                fontFamily: GoogleFonts.poppins().fontFamily,
                                color: Colors.black),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      
    );
  }
}
