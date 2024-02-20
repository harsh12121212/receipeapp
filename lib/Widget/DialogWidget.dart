import 'package:flutter/material.dart';

class DialogWidget extends StatelessWidget {
  final String title;
  final String content;
  final String cancelButtonText;
  final String positiveButtonText;

  DialogWidget({
    required this.title,
    required this.content,
    required this.cancelButtonText,
    required this.positiveButtonText,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.white,
      title: Text(title),
      content: Padding(
        padding: EdgeInsets.all(10),
        child: Text(content),
      ),
      actions: <Widget>[
        Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  side: BorderSide.none,
                ),
                child: Text(
                  cancelButtonText,
                  style: TextStyle(
                    color: Color(0xFFFF725E),
                  ),
                ),
              ),
              SizedBox(width: 15),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop();
                  // You can add your logout logic here
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFFFF725E),
                  side: BorderSide.none,
                ),
                child: Text(
                  positiveButtonText,
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
