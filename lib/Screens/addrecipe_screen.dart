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
          title: const Text(
            'Create',
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
        body: AddRecipeScreen(),
      ),
    );
  }
}

class AddRecipeScreen extends StatefulWidget {
  const AddRecipeScreen({Key? key}) : super(key: key);

  @override
  _AddRecipeScreenState createState() => _AddRecipeScreenState();
}

class _AddRecipeScreenState extends State<AddRecipeScreen> {
  bool _showForm = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _showForm ? _buildForm() : _buildMainContent(),
    );
  }

  Widget _buildMainContent() {
    return Container(
      margin: const EdgeInsets.fromLTRB(30, 100, 30, 0),
      child: Column(
        children: [
          _mainContent(context),
        ],
      ),
    );
  }

  Widget _mainContent(context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.asset('assets/bgimg_add.png', height: 170, width: 170),
          const SizedBox(height: 50),
          Text(
            'Create your food recipe and share it with the community',
            style: GoogleFonts.roboto(
              textStyle: TextStyle(
                fontSize: 27,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 10),
          Text(
            'Help people to find new ideas and develop their cooking skills',
            style: GoogleFonts.roboto(
              textStyle: TextStyle(
                fontSize: 18,
                color: Colors.black,
              ),
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 80),
          ElevatedButton(
            onPressed: () {
              setState(() {
                _showForm = true;
              });
            },
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(vertical: 16),
              backgroundColor: const Color(0xFFFF725E),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
            ),
            child: Text(
              'Create Recipe +',
              style: GoogleFonts.roboto(
                textStyle: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildForm() {
    // Replace this with your form widget
    return Center(
      child: Text(
        'Recipe Form',
        style: TextStyle(fontSize: 24),
      ),
    );
  }
}
