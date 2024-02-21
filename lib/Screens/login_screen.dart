import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:receipeapp/Screens/forgotpswd_screen.dart';
import 'package:receipeapp/Screens/registration_screen.dart';
import 'home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Login Screen',
      home: LoginScreen(),
    );
  }
}

class LoginScreen extends StatefulWidget  {

  const LoginScreen({super.key});

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Login',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.fromLTRB(24, 40, 24, 0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              _header(context),
              _inputField(context),
              _signup(context),
            ],
          ),
        ),
      ),
    );
  }

  _header(context) {
    return Column(
      children: [
        Text(
          'Welcome Back',
          style: GoogleFonts.lora(
            textStyle: const TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Color(0xFFFF725E),
            ),
          ),
        ),
        Image.asset(
          'assets/loginscreen.png',
          height: 360.0,
          width: 350.0,
          fit: BoxFit.cover,
        ),
      ],
    );
  }

  _inputField(context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        TextField(
          decoration: InputDecoration(
              hintText: "Username",
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(18),
                  borderSide: BorderSide.none),
              fillColor: const Color(0xFFFF725E).withOpacity(0.1),
              filled: true,
              prefixIcon: const Icon(Icons.person, color: Color(0xFFFF725E))),
        ),
        const SizedBox(height: 10),
        TextField(
          decoration: InputDecoration(
            hintText: "Password",
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(18),
                borderSide: BorderSide.none),
            fillColor: const Color(0xFFFF725E).withOpacity(0.1),
            filled: true,
            prefixIcon: const Icon(Icons.lock,color: Color(0xFFFF725E)),
          ),
          obscureText: true,
        ),
        const SizedBox(height: 20),
        ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const HomeScreen()),
            );
          },
          style: ElevatedButton.styleFrom(
            shape: const StadiumBorder(),
            padding: const EdgeInsets.symmetric(vertical: 16),
            backgroundColor: const Color(0xFFFF725E),
          ),
          child: const Text(
            "Login",
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
            ),
          ),
        )
      ],
    );
  }

  _signup(context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ForgotPasswordScreen()),
              );
            },
            child: const Text(
              "Forgot password?",
              style: TextStyle(
                color: Color(0xFFFF725E),
                fontSize: 15,
              ),
            ),
          ),
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Don't have an account? ",
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SignUpPage()),
                );
              },
              child: const Text(
                "Sign Up",
                style: TextStyle(
                  color: Color(0xFFFF725E),
                  fontSize: 18,
                ),
              ),
            )
          ],
        ),
      ],
    );
  }
}
