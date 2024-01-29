import 'package:flutter/material.dart';
import 'package:receipeapp/Screens/welcome_screen.dart';
import 'splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          color: Color(0xFFFF725E),
        ),
      ),
      home: FutureBuilder(
        // Add a delay before navigating to the main content
        future: Future.delayed(Duration(seconds: 5), () => true),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return WelcomeScreen(); // Replace with your main content screen
          } else {
            return SplashScreen();
          }
        },
      ),
      // ... other configurations
    );
  }
}

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Your main content goes here
    );
  }
}
