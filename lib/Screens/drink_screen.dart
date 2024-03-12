import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../Model/RecipeData.dart';
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
    List<RecipeData> foodItems = [
      RecipeData(
          title: 'Smoothies',
          imagePath: 'assets/bvgimg1.png',
          rating: "",
          rated: '',
          detail: '',
          description: '',
          calories: '',
          time: ''),
      RecipeData(
          title: 'Lemonades',
          imagePath: 'assets/bvgimg2.png',
          rating: "",
          rated: '',
          detail: '',
          description: '',
          calories: '',
          time: ''),
      RecipeData(
          title: 'Mocktails',
          imagePath: 'assets/bvgimg3.png',
          rating: "",
          rated: '',
          detail: '',
          description: '',
          calories: '',
          time: ''),
      RecipeData(
          title: 'Fruit shakes',
          imagePath: 'assets/bvgimg4.png',
          rating: "",
          rated: '',
          detail: '',
          description: '',
          calories: '',
          time: ''),
      RecipeData(
          title: 'Milkshakes',
          imagePath: 'assets/bvgimg5.png',
          rating: "",
          rated: '',
          detail: '',
          description: '',
          calories: '',
          time: '')
    ];
    return Container(
      margin: const EdgeInsets.all(0),
      height: 150, // Adjust the height as needed
      child: VerticalScrollViewWidget(listItems: foodItems),
    );
  }

  _horizontalFood(context) {
    List<RecipeData> foodItems = [
      RecipeData(
        title: 'Blueberry smoothie',
        imagePath: 'assets/bvgimg1.png',
        rating: '4.0',
        rated: '(195 ratings)',
        detail: '• Health',
        description: 'A refreshing and nutritious smoothie made with fresh blueberries, yogurt, and honey. Perfect for a healthy breakfast or snack.',
        calories: 'Approximately 150 calories per serving',
        time: 'Preparation: 5 minutes',
      ),
      RecipeData(
        title: 'Orange Lemonade',
        imagePath: 'assets/bvgimg2.png',
        rating: '4.3',
        rated: '(114 ratings)',
        detail: '• Snack',
        description: 'A tangy and refreshing drink made with freshly squeezed orange and lemon juice, sweetened with a hint of sugar or honey. Perfect for hot summer days!',
        calories: 'Approximately 100 calories per serving',
        time: 'Preparation: 10 minutes',
      ),
      RecipeData(
        title: 'Shirley Temple Drink',
        imagePath: 'assets/bvgimg3.png',
        rating: '4.5',
        rated: '(780 ratings)',
        detail: '• Party',
        description: 'A classic non-alcoholic mocktail made with ginger ale, grenadine, and a maraschino cherry. It\'s sweet, fizzy, and perfect for parties or special occasions.',
        calories: 'Approximately 120 calories per serving',
        time: 'Preparation: 5 minutes',
      ),
      RecipeData(
        title: 'Green Kiwi Shake',
        imagePath: 'assets/bvgimg4.png',
        rating: '4.7',
        rated: '(35 ratings)',
        detail: '• Health',
        description: 'A healthy and refreshing shake made with ripe green kiwi, yogurt, and a touch of honey. Packed with vitamins and antioxidants, it\'s a great way to start your day!',
        calories: 'Approximately 160 calories per serving',
        time: 'Preparation: 5 minutes',
      ),
      RecipeData(
        title: 'Oreo Milkshake',
        imagePath: 'assets/bvgimg5.png',
        rating: '4.7',
        rated: '(195 ratings)',
        detail: '• Snack',
        description: 'A decadent and indulgent milkshake made with Oreo cookies, vanilla ice cream, and milk. It\'s creamy, chocolatey, and utterly delicious!',
        calories: 'Approximately 300 calories per serving',
        time: 'Preparation: 5 minutes',
      ),

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
