import 'package:flutter/material.dart';

class FormDialogBoxWidget extends StatefulWidget {
  final String title;
  final String textField1HintText;
  final String textField2HintText;
  final String textField3HintText;
  final String CloseButtonText;
  final String ProceedButtonText;
  final Icon? prefixIcon1;
  final Icon? prefixIcon2;
  final Icon? prefixIcon3;
  final Icon? suffixIcon;
  bool obscure;

  FormDialogBoxWidget({
    required this.title,
    required this.textField1HintText,
    required this.textField2HintText,
    required this.textField3HintText,
    required this.CloseButtonText,
    required this.ProceedButtonText,
    this.prefixIcon1,
    this.prefixIcon2,
    this.prefixIcon3,
    this.suffixIcon,
    this.obscure = false,
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
            obscureText: widget.obscure,
            decoration: InputDecoration(
              hintText: widget.textField1HintText,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(18),
                borderSide: BorderSide.none,
              ),
              fillColor: const Color(0xFFFF725E).withOpacity(0.1),
              filled: true,
              prefixIcon: widget.prefixIcon1 ?? Icon(Icons.lock, color: Color(0xFFFF725E)),
              suffixIcon: InkWell(
                onTap: () {
                  setState(() {
                    widget.obscure = !widget.obscure;
                  });
                },
                child: Icon(
                  widget.obscure ? Icons.visibility_off : Icons.visibility,
                  color: Color(0xFFFF725E),
                ),
              ),
            ),
          ),
          SizedBox(height: 10),
          TextField(
            decoration: InputDecoration(
              hintText: widget.textField2HintText,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(18),
                borderSide: BorderSide.none,
              ),
              fillColor: const Color(0xFFFF725E).withOpacity(0.1),
              filled: true,
              prefixIcon: widget.prefixIcon2 ?? Icon(Icons.lock, color: Color(0xFFFF725E)),
              suffixIcon: InkWell(
                onTap: () {
                  setState(() {
                    widget.obscure = !widget.obscure;
                  });
                },
                child: Icon(
                  widget.obscure ? Icons.visibility_off : Icons.visibility,
                  color: Color(0xFFFF725E),
                ),
              ),
            ),
          ),
          SizedBox(height: 10),
          TextField(
            obscureText: widget.obscure,
            decoration: InputDecoration(
              hintText: widget.textField3HintText,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(18),
                borderSide: BorderSide.none,
              ),
              fillColor: const Color(0xFFFF725E).withOpacity(0.1),
              filled: true,
              prefixIcon: widget.prefixIcon1 ?? Icon(Icons.lock, color: Color(0xFFFF725E)),
              suffixIcon: InkWell(
                onTap: () {
                  setState(() {
                    widget.obscure = !widget.obscure;
                  });
                },
                child: Icon(
                  widget.obscure ? Icons.visibility_off : Icons.visibility,
                  color: Color(0xFFFF725E),
                ),
              ),
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
