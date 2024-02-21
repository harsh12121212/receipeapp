import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:receipeapp/Screens/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Forgot Password?',
      home: ForgotPasswordScreen(),
    );
  }
}

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({Key? key}) : super(key: key);

  @override
  _ForgotPasswordScreenState createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Forgot Password',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.fromLTRB(24, 80, 24, 0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              _header(context),
              _form(context),
            ],
          ),
        ),
      ),
    );
  }

  _header(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          'assets/forgotpassword.png',
          height: 300.0,
          width: 300.0,
          fit: BoxFit.cover,
        ),
        const SizedBox(height: 10),
        Text(
          'Forgot Password ?',
          style: GoogleFonts.lora(
            textStyle: const TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Color(0xFFFF725E),
            ),
          ),
        ),
        Text(
          'Enter your registered email here to reset your password.',
          textAlign: TextAlign.center,
          style: GoogleFonts.lora(
            textStyle: const TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w500,
              color: Colors.black54,
            ),
          ),
        ),
      ],
    );
  }

  _form(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const SizedBox(height: 30),
        TextField(
          decoration: InputDecoration(
              hintText: "Enter Email",
              hintStyle: const TextStyle(
                color: Colors.black26
              ),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(18),
                  borderSide: BorderSide.none),
              fillColor: const Color(0xFFFF725E).withOpacity(0.1),
              filled: true,
              prefixIcon: const Icon(Icons.mail, color: Color(0xFFFF725E))),
        ),
        const SizedBox(height: 15),
        ElevatedButton(
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text(
                  "Please check your registered email ID and reset your password.",
                ),
                duration: Duration(seconds: 3),
              ),
            );
          },
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(vertical: 13),
            backgroundColor: const Color(0xFFFF725E),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18),
            ),
          ),
          child: const Text(
            "Reset Password",
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
            ),
          ),
        )
      ],
    );
  }
}
