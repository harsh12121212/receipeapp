import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:receipeapp/Widget/HorizontalScrollViewWidget.dart';
import '../Model/ListItem.dart';
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
          title: Text('Food Recipes'),
        ),
        body: FoodScreen(),
      ),
    );
  }
}

class FoodScreen extends StatelessWidget {
  const FoodScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Food recipes',
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
      ListItem(title: 'Punjabi', imagePath: 'assets/foodimg1.png',rating: '', rated: '',detail: ''),
      ListItem(title: 'South Indian', imagePath: 'assets/foodimg2.png',rating: '',rated: '',detail: ''),
      ListItem(title: 'Chat', imagePath: 'assets/foodimg3.png',rating: '',rated: '',detail: ''),
      ListItem(title: 'Biryani', imagePath: 'assets/foodimg4.png',rating: '',rated: '',detail: ''),
    ];
    return Container(
      margin: const EdgeInsets.all(0),
      height: 150, // Adjust the height as needed
      child: VerticalScrollViewWidget(listItems: foodItems),
    );
  }

  _horizontalFood(context) {
    List<ListItem> foodItems = [
      ListItem(title: 'Chole Bhature ', imagePath: 'assets/foodimg1.png',rating: '4.1 ',rated: '(125 ratings)  ',detail: '• Indian Food'),
      ListItem(title: 'Learn to make soft idlis', imagePath: 'assets/foodimg2.png',rating: '4.3 ',rated: '(110 ratings)  ',detail: '• Indian Food'),
      ListItem(title: 'Pani puri in 30 minutes', imagePath: 'assets/foodimg3.png',  rating: '4.5 ',rated: '(90 ratings)  ',detail: '• Indian Food'),
      ListItem(title: 'Chicken Dum Biryani', imagePath: 'assets/foodimg4.png',rating: '4.7 ',rated: '(25 ratings)  ',detail: '• Indian Food'),
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
                'Popular Food',
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
