import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../Widget/DialogWidget.dart';
import '../Widget/FormDialogBoxWidget.dart';
import 'updateprofile_screen.dart';
import '../Widget/ProfileMenuWidget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: ProfileScreen(),
      ),
    );
  }
}

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              _profile(context),
              const Divider(
                color: Color(0xFFFF725E),
              ),
              _option(context),
            ],
          ),
        ),
      ),
    );
  }

  _profile(context) {
    return Column(children: [
      Stack(
        children: [
          Container(
            width: 220,
            height: 220,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              border: Border.all(color: Color(0xFFFF725E)),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Image.asset('assets/profile.png'),
            ),
          ),
          Positioned(
            bottom: 0,
            right: 15,
            child: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: Color(0xFFFF725E)),
              child: const Icon(
                Icons.edit,
                color: Colors.white,
                size: 20,
              ),
            ),
          ),
        ],
      ),
      const SizedBox(height: 10),
      Text(
        "Jane Doe",
        style: GoogleFonts.lora(
          textStyle: TextStyle(
              color: Color(0xFFFF725E),
              fontSize: 25,
              fontWeight: FontWeight.w600),
        ),
      ),
      Text(
        "janedoe@gmail.com",
        style: GoogleFonts.lora(
          textStyle: TextStyle(
            fontSize: 15,
          ),
        ),
      ),
      const SizedBox(height: 20),
    ]);
  }

  _option(context) {
    return Column(children: [
      ProfileMenuWidget(
          title: "Edit Profile",
          icon: Icons.settings_outlined,
          onPress: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => UpdateProfileScreen(),
              ),
            );
          }),
      ProfileMenuWidget(
          title: "Change Password",
          icon: Icons.lock_outline,
          onPress: () {
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return FormDialogBoxWidget(
                  title: 'Change Password',
                  textField1HintText: 'Enter current password',
                  textField2HintText: 'Enter new password',
                  textField3HintText: 'Confirm new password',
                  CloseButtonText: 'Cancel',
                  ProceedButtonText: 'Change Password',
                );
              },
            );
          },
          ),
      ProfileMenuWidget(
          title: "About us", icon: Icons.info_outline, onPress: () {}),
      ProfileMenuWidget(
        title: "Logout",
        icon: Icons.logout_outlined,
        textColor: Colors.red,
        endIcon: false,
        onPress: () {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return DialogWidget(
                title: 'Log out',
                content: 'Are you sure you want to logout ?',
                cancelButtonText: 'Cancel',
                positiveButtonText: 'Logout',
              );
            },
          );
        },
      ),
    ]);
  }
}
