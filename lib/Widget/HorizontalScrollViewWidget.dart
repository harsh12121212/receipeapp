import 'package:flutter/material.dart';
import '../Model/RecipeData.dart';
import '../Screens/recipedetail_screen.dart';

class HorizontalScrollViewWidget extends StatelessWidget {
  final List<RecipeData> listItems;

  const HorizontalScrollViewWidget({super.key, required this.listItems});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: listItems
          .map((item) => _buildListItem(
              context,
              item.title,
              item.imagePath,
              item.rating,
              item.rated,
              item.detail,
              item.description,
              item.calories,
              item.time))
          .toList(),
    );
  }

  Widget _buildListItem(
      BuildContext context,
      String title,
      String imagePath,
      String rating,
      String rated,
      String detail,
      String description,
      String calories,
      String time) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => RecipeDetailScreen(
              data: RecipeData(
                title: title,
                imagePath: imagePath,
                rating: rating ,
                rated: rated ,
                detail: detail ,
                description: description,
                calories: calories ,
                time: time,
              ),
            ),
          ),
        );
      },
      child: Container(
        margin: const EdgeInsets.all(0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              imagePath,
              height: 210,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 11.0),
              // Add padding to the left of the title
              child: Text(
                title,
                style: const TextStyle(
                    fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                children: [
                  const Icon(
                    Icons.star_rounded,
                    color: Colors.red,
                  ),
                  Text(
                    rating,
                    style: const TextStyle(fontSize: 16.0, color: Colors.red),
                  ),
                  Text(
                    rated,
                    style: const TextStyle(fontSize: 16.0, color: Colors.black45),
                  ),
                  Text(
                    detail,
                    style: const TextStyle(fontSize: 16.0, color: Colors.black45),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}