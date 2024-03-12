import 'package:flutter/material.dart';

import '../Model/RecipeData.dart';

class VerticalScrollViewWidget extends StatelessWidget {
  final List<RecipeData> listItems;

  VerticalScrollViewWidget({required this.listItems});

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: listItems
          .map((item) => _buildListItem(item.title, item.imagePath))
          .toList(),
    );
  }

  Widget _buildListItem(String text, String imagePath) {
    return Container(
      width: 140,
      margin: EdgeInsets.all(7),
      child: Column(
        children: [
          Center(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20.0), // Adjust the radius as needed
              child: Image.asset(
                imagePath,
                height: 105.0,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(height: 4), // Add some spacing between image and text
          Center(
            child: Text(
              text,
              style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}