import 'package:flutter/material.dart';

import '../Model/ListItem.dart';

class HorizontalScrollViewWidget extends StatelessWidget {
  final List<ListItem> listItems;

  HorizontalScrollViewWidget({required this.listItems});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: listItems
          .map((item) =>
          _buildListItem(
              item.title, item.imagePath, item.rating, item.rated, item.detail))
          .toList(),
    );
  }

  Widget _buildListItem(String title, String imagePath, String rating, String rated, String detail) {
    return Container(
      margin: EdgeInsets.all(0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            imagePath,
            height: 210,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(left: 11.0),
            // Add padding to the left of the title
            child: Text(
              title,
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            // Add padding to the entire row
            child: Row(
              children: [
                Icon(
                  Icons.star_rounded,
                  color: Colors.red,
                ),
                Text(
                  rating, // Replace with actual rating value
                  style: TextStyle(fontSize: 16.0, color: Colors.red),
                ),
                Text(
                  rated, // Replace with actual rating value
                  style: TextStyle(fontSize: 16.0, color: Colors.black45),
                ),
                Text(
                  detail, // Replace with actual rating value
                  style: TextStyle(fontSize: 16.0, color: Colors.black45),
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
        ],
      ),
    );
  }
}