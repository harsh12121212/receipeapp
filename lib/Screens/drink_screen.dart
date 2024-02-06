import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../Model/ListItem.dart';
import '../Widget/HorizontalScrollViewWidget.dart';
import '../Widget/VerticalScrollViewWidget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Drinks Recipes'),
        ),
        body: DrinkScreen(),
      ),
    );
  }
}

class DrinkScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Beverage recipes',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
      body: Container(
        margin: const EdgeInsets.fromLTRB(0, 5, 0, 0),
        child: Column(
          children: [
            _header(context),
            _verticalScroller(context),
            _horizontalFood(context),
          ],
        ),
      ),
    );
  }

  _header(context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(15, 0, 15, 0),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            Text(
              'Hello User !',
              style: GoogleFonts.lora(
                textStyle: TextStyle(
                  fontSize: 25, // You can adjust the font size as needed
                  color: Color(0xFFFF725E), // Set the color to #ff725e
                ),
              ),
            ),
            const SizedBox(height: 20),
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

  _verticalScroller(context) {
    List<ListItem> foodItems = [
      ListItem(title: 'Smoothies', imagePath: 'assets/bvgimg1.png',rating: '',rated: '',detail: ''),
      ListItem(title: 'Lemonades', imagePath: 'assets/bvgimg2.png',rating: '',rated: '',detail: ''),
      ListItem(title: 'Mocktails', imagePath: 'assets/bvgimg3.png',rating: '',rated: '',detail: ''),
      ListItem(title: 'Fruit shakes', imagePath: 'assets/bvgimg4.png',rating: '',rated: '',detail: ''),
      ListItem(title: 'Milkshakes', imagePath: 'assets/bvgimg5.png',rating: '',rated: '',detail: ''),

    ];
    return Container(
      margin: const EdgeInsets.all(0),
      height: 150, // Adjust the height as needed
      child: VerticalScrollViewWidget(listItems: foodItems),
    );
  }

  _horizontalFood(context) {
    List<ListItem> foodItems = [
      ListItem(title: 'Blueberry smoothie', imagePath: 'assets/bvgimg1.png',rating: '4.0 ',rated: '(195 ratings)  ',detail: '• Health'),
      ListItem(title: 'Orange Lemonade', imagePath: 'assets/bvgimg2.png',rating: '4.3 ',rated: '(114 ratings)  ',detail: '• Snack'),
      ListItem(title: 'Shirley Temple Drink', imagePath: 'assets/bvgimg3.png',  rating: '4.5 ',rated: '(780 ratings)  ',detail: '• Party'),
      ListItem(title: 'Green Kiwi Shake', imagePath: 'assets/bvgimg4.png',rating: '4.7 ',rated: '(35 ratings)  ',detail: '• Health'),
      ListItem(title: 'Oreo Milkshake', imagePath: 'assets/bvgimg5.png',rating: '4.7 ',rated: '(195 ratings)  ',detail: '• Snack'),
    ];
    return Container(
      margin: const EdgeInsets.all(0),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 11.0),
              // Add padding to the left of the title
              child: Text(
                'Popular Beverages',
                style: GoogleFonts.lora(
                  textStyle: TextStyle(
                    fontSize: 25,
                    color: Color(0xFFFF725E),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Container(
              height: 390,
              child: HorizontalScrollViewWidget(listItems: foodItems),
            ),
          ]),
    );
  }
}