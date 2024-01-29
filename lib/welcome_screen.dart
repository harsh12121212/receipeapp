import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:receipeapp/login_screen.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Welcome to Cook Book!',
              style: GoogleFonts.lora(
                textStyle: TextStyle(
                  fontSize: 30, // You can adjust the font size as needed
                  fontWeight: FontWeight.bold,
                  color: Color(0xFFFF725E), // Set the color to #ff725e
                ),
              ),
            ),
            SizedBox(height: 10),
            Image.asset('assets/welcomescreen.png', height: 400, width: 400),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginScreen()),
                );
              },
              style: ElevatedButton.styleFrom(
                primary: Color(0xFFFF725E), // Set the button color to #FF725E
                minimumSize: Size(350, 40), // Set the button width and height
              ),
              child: Text(
                'Login',
                style: GoogleFonts.lora(
                  textStyle: TextStyle(
                    fontSize: 16, // Set the font size as needed
                    fontWeight: FontWeight.bold,
                    color: Colors.white, // Set the text color
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                // Add register button functionality
                // For example, you can navigate to the register screen
              },
              style: ElevatedButton.styleFrom(
                primary: Color(0xFFFF725E), // Set the button color to #FF725E
                minimumSize: Size(350, 40), // Set the button width and height
              ),
              child: Text(
                'Register',
                style: GoogleFonts.lora(
                  textStyle: TextStyle(
                    fontSize: 16, // Set the font size as needed
                    fontWeight: FontWeight.bold,
                    color: Colors.white, // Set the text color
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
