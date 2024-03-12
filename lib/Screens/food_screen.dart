import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:receipeapp/Widget/HorizontalScrollViewWidget.dart';
import '../Model/RecipeData.dart';
import '../Widget/VerticalScrollViewWidget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
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
    List<RecipeData> foodItems = [
      RecipeData(
          title: 'Punjabi',
          imagePath: 'assets/foodimg1.png',
          rating: '',
          rated: '',
          detail: '',
          description: '',
          calories: '',
          time: ''),
      RecipeData(
          title: 'South Indian',
          imagePath: 'assets/foodimg2.png',
          rating: '',
          rated: '',
          detail: '',
          description: '',
          calories: '',
          time: ''),
      RecipeData(
          title: 'Chat',
          imagePath: 'assets/foodimg3.png',
          rating: '',
          rated: '',
          detail: '',
          description: '',
          calories: '',
          time: ''),
      RecipeData(
          title: 'Biryani',
          imagePath: 'assets/foodimg4.png',
          rating: '',
          rated: '',
          detail: '',
          description: '',
          calories: '',
          time: ''),
    ];
    return Container(
      margin: const EdgeInsets.all(0),
      height: 150,
      child: VerticalScrollViewWidget(listItems: foodItems),
    );
  }

  _horizontalFood(context) {
    List<RecipeData> foodItems = [
      RecipeData(
        title: 'Chole Bhature',
        imagePath: 'assets/foodimg1.png',
        rating: '4.1',
        rated: '(125 ratings)',
        detail: '• Indian Food',
        description: "Chole Bhature is a popular North Indian dish consisting of spicy chickpea curry (chole) and deep-fried bread (bhature). It's often served with pickles and onions.",
        calories: "Approximately 350 calories per serving",
        time: "Preparation: 20 minutes, Cooking: 40 minutes",
      ),
      RecipeData(
        title: 'Learn to make soft idlis',
        imagePath: 'assets/foodimg2.png',
        rating: '4.3',
        rated: '(110 ratings)',
        detail: '• Indian Food',
        description: "Idli is a traditional South Indian dish made from fermented rice and lentil batter. It's steamed to perfection and served with chutney and sambar.",
        calories: "Approximately 60 calories per idli",
        time: "Preparation: 10 minutes, Fermentation: 8 hours, Cooking: 10 minutes",
      ),
      RecipeData(
        title: 'Pani puri in 30 minutes',
        imagePath: 'assets/foodimg3.png',
        rating: '4.5',
        rated: '(90 ratings)',
        detail: '• Indian Food',
        description: "Pani Puri, also known as Golgappa or Puchka, is a popular street food in India. It consists of crispy hollow puris filled with spicy tangy water (pani) and mashed potato filling.",
        calories: "Approximately 80 calories per serving",
        time: "Preparation: 20 minutes, Cooking: 10 minutes",
      ),
      RecipeData(
        title: 'Chicken Dum Biryani',
        imagePath: 'assets/foodimg4.png',
        rating: '4.7',
        rated: '(25 ratings)',
        detail: '• Indian Food',
        description: "Chicken Dum Biryani is a flavorful and aromatic rice dish made by layering marinated chicken and partially cooked rice, then slow-cooked to perfection.",
        calories: "Approximately 400 calories per serving",
        time: "Preparation: 30 minutes, Cooking: 1 hour",
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
