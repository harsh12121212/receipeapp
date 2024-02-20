import 'package:flutter/material.dart';

class FormDialogBoxWidget extends StatefulWidget {
  final String title;
  final String textField1HintText;
  final String textField2HintText;
  final String textField3HintText;
  final String CloseButtonText;
  final String ProceedButtonText;

  FormDialogBoxWidget({
    required this.title,
    required this.textField1HintText,
    required this.textField2HintText,
    required this.textField3HintText,
    required this.CloseButtonText,
    required this.ProceedButtonText,
  });

  @override
  _FormDialogBoxWidgetState createState() => _FormDialogBoxWidgetState();
}

class _FormDialogBoxWidgetState extends State<FormDialogBoxWidget> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.white,
      title: Text(widget.title ?? 'Change Password'),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          TextField(
            obscureText: true,
            decoration: InputDecoration(
              hintText: widget.textField1HintText,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(18),
                borderSide: BorderSide.none,
              ),
              fillColor: const Color(0xFFFF725E).withOpacity(0.1),
              filled: true,
              prefixIcon: const Icon(Icons.lock, color: Color(0xFFFF725E)),
            ),
          ),
          SizedBox(height: 10),
          TextField(
            obscureText: true,
            decoration: InputDecoration(
              hintText: widget.textField2HintText,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(18),
                borderSide: BorderSide.none,
              ),
              fillColor: const Color(0xFFFF725E).withOpacity(0.1),
              filled: true,
              prefixIcon: const Icon(Icons.lock, color: Color(0xFFFF725E)),
            ),
          ),
          SizedBox(height: 10),
          TextField(
            obscureText: true,
            decoration: InputDecoration(
              hintText:
              widget.textField3HintText,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(18),
                borderSide: BorderSide.none,
              ),
              fillColor: const Color(0xFFFF725E).withOpacity(0.1),
              filled: true,
              prefixIcon: const Icon(Icons.lock, color: Color(0xFFFF725E)),
            ),
          ),
        ],
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
                  widget.CloseButtonText,
                  style: TextStyle(
                    color: Color(0xFFFF725E),
                  ),
                ),
              ),
              SizedBox(width: 15),
              ElevatedButton(
                onPressed: () {
                  // Add your password change logic here
                  Navigator.of(context).pop();
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFFFF725E),
                  side: BorderSide.none,
                ),
                child: Text(
                  widget.ProceedButtonText,
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}