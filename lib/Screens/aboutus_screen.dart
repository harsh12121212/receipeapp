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
        body: AboutUsScreen(),
      ),
    );
  }
}

class AboutUsScreen extends StatelessWidget {
  const AboutUsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'About us',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Stack(
            children: [
              Image.asset(
                'assets/aboutusbg.png',
                fit: BoxFit.cover,
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
              ),
              Container(
                color: Colors.red.withOpacity(0.8),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
              ),
              Column(
                children: [
                  _header(context),
                  _content(context),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  _header(context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(24, 60, 24, 0),
      child: Column(
        children: [
          Image.asset('assets/cookimg.png', height: 110, width: 110),
          SizedBox(height: 20),
          Text(
            '"No one is born a great cook, one learns by doing."',
            textAlign: TextAlign.center,
            style: GoogleFonts.lora(
              textStyle: const TextStyle(
                fontSize: 38,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.w800,
                color: Color(0xFFFFFFFF),
              ),
            ),
          ),
          SizedBox(height: 10),
          Text(
            '               ~ Julia Child',
            textAlign: TextAlign.center,
            style: GoogleFonts.lora(
              textStyle: const TextStyle(
                fontSize: 26,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.w700,
                color: Color(0xFFFFFFFF),
              ),
            ),
          ),
          SizedBox(height: 10),
          const Divider(
            color: Colors.white,
            thickness: 5,
          ),
        ],
      ),
    );
  }

  _content(context) {
    return Container(
      margin: const EdgeInsets.all(24),
      child: Column(
        children: [
          Text(
            "Whether you're a seasoned chef or a beginner in the kitchen, Cook Book is here to elevate your cooking experience. Our recipe app is designed to inspire creativity, simplify meal planning, and foster a vibrant community of food lovers.",
            style: GoogleFonts.roboto(
              textStyle: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w700,
                color: Colors.white,
              ),
            ),
          ),
          SizedBox(height: 10),
          Text(
            "We believe that cooking is not just about following instructions, but about expressing yourself through flavors, textures, and creativity. With our user-friendly interface and extensive database of recipes, you can unleash your culinary imagination and bring delicious dishes to life in your own kitchen.",
            style: GoogleFonts.roboto(
              textStyle: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w700,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
