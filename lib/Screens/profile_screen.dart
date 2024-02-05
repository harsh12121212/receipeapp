import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Profile Screen'),
        ),
        body: ProfileScreen(),
      ),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Profile Screen',
        style: GoogleFonts.lora(
          textStyle: TextStyle(
            fontSize: 30, // You can adjust the font size as needed
            fontWeight: FontWeight.bold,
            color: Color(0xFFFF725E), // Set the color to #ff725e
          ),
        ),
      ),
    );
  }
}
