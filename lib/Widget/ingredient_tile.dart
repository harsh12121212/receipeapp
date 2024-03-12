import 'package:flutter/material.dart';

class IngredientTile extends StatelessWidget {
  const IngredientTile({super.key});


  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
      decoration: const BoxDecoration(border: Border(bottom: BorderSide(color: Color(0xFFFF725E), width: 1))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Flexible(
            flex: 9,
            child: Text(
              "data.name",
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  height: 150 / 100),
            ),
          ),
          Flexible(
            flex: 3,
            child: Text(
              "data.size",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700, fontFamily: 'inter', color: Colors.grey[600]),
            ),
          ),
        ],
      ),
    );
  }
}