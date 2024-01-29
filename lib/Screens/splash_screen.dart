import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/splashscreen.png'),
            SizedBox(height: 20), // Add some space between image and text
            Text(
              'Cook Book',
              style: GoogleFonts.lora(
                textStyle: TextStyle(
                  fontSize: 30, // You can adjust the font size as needed
                  fontWeight: FontWeight.bold,
                  color: Color(0xFFFF725E), // Set the color to #ff725e
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
