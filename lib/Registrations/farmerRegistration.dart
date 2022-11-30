import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

class FarmerRegistration extends StatefulWidget {
  const FarmerRegistration({super.key});

  @override
  State<FarmerRegistration> createState() => _FarmerRegistrationState();
}

class _FarmerRegistrationState extends State<FarmerRegistration> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0xFF48BD34),
        automaticallyImplyLeading: false,
        title: Align(
          alignment: AlignmentDirectional(0, 0),
          child: Text('Register',
              style: TextStyle(fontFamily: GoogleFonts.poppins().fontFamily)),
        ),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            // topLeft: Radius.circular(20.0),
            // topRight: Radius.circular(20.0),
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),
        ),
        actions: [],
        centerTitle: false,
        elevation: 2,
      ),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Align(
                alignment: AlignmentDirectional(0, 0),
                child: Image.network(
                  'https://uxdt.nic.in/wp-content/uploads/2020/06/Pradhanmantri_phasal-Preview.png?x74032',
                  width: 150,
                  height: 150,
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
