import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'drink_screen.dart';
import 'food_screen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MenuScreen(),
    );
  }
}

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Menu',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.fromLTRB(0, 5, 0, 20),
          child: Column(
            children: [
              _header(context),
              _content(context),
            ],
          ),
        ),
      ),
    );
  }

  _header(context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(10, 0, 10, 20),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                  hintText: "Search Food",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide.none),
                  fillColor: const Color(0xFFFF725E).withOpacity(0.1),
                  filled: true,
                  prefixIcon:
                      const Icon(Icons.search_sharp, color: Color(0xFFFF725E))),
            ),
            const SizedBox(height: 20),
          ]),
    );
  }

  _content(context) {
    return Container(
      width: double.infinity,
      height: 480,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            decoration: const BoxDecoration(
              color: Color(0xFFFF725E),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(0),
                topRight: Radius.circular(50),
                bottomLeft: Radius.circular(0),
                bottomRight: Radius.circular(50),
              ),
            ),
            height: 480,
            width: 100,
          ),
          Positioned(
            left: 50,
            top: 90,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(50),
                  topRight: Radius.circular(10),
                  bottomLeft: Radius.circular(50),
                  bottomRight: Radius.circular(10),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Color(0xFFFD9C91),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: Offset(0, 2),
                  ),
                ],
              ),
              height: 105,
              width: 280,
              child: Center(
                child: Text(
                  "Food",
                  style: GoogleFonts.lora(
                    textStyle: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFFFF725E),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            child: CircleAvatar(
              radius: 40,
              backgroundImage: AssetImage('assets/food.png'),
            ),
            right: 300,
            left: 10,
            bottom: 300,
          ),
          Positioned(
            child: FloatingActionButton(
              shape: const CircleBorder(),
              child: const Icon(
                Icons.arrow_forward_ios,
                color: Color(0xFFFF725E),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => FoodScreen()),
                );
              },
              backgroundColor: Colors.white,
            ),
            right: -250,
            left: 0,
            bottom: 312,
          ),
          Positioned(
            left: 50,
            top: 250,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(50),
                  topRight: Radius.circular(10),
                  bottomLeft: Radius.circular(50),
                  bottomRight: Radius.circular(10),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Color(0xFFFD9C91),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: Offset(0, 2),
                  ),
                ],
              ),
              height: 105,
              width: 280,
              child: Center(
                child: Text(
                  "Beverages",
                  style: GoogleFonts.lora(
                    textStyle: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFFFF725E),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            child: CircleAvatar(
              radius: 40,
              backgroundImage: AssetImage('assets/beverage.png'),
            ),
            right: 300,
            left: 10,
            bottom: 137,
          ),
          Positioned(
            child: FloatingActionButton(
              shape: const CircleBorder(),
              child: const Icon(
                Icons.arrow_forward_ios,
                color: Color(0xFFFF725E),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DrinkScreen()),
                );
              },
              backgroundColor: Colors.white,
            ),
            right: -250,
            left: 0,
            bottom: 150,
          ),
        ],
      ),
    );
  }
}
