import 'package:flutter/material.dart';
import 'package:receipeapp/Widget/BezierContainer.dart';
import 'package:receipeapp/Screens/login_screen.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key, this.title}) : super(key: key);

  final String? title;

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            height: height,
            child: Stack(
              children: <Widget>[
                Positioned(
                  top: -MediaQuery.of(context).size.height * .15,
                  right: -MediaQuery.of(context).size.width * .4,
                  child: BezierContainer(),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(height: height * .2),
                      SizedBox(height: 20,),
                      Column(
                        children: <Widget>[
                          Container(
                            width: 350,
                            child: TextField(
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Color(0xFFFDDCD7),
                                hintText: 'Username',
                                prefixIcon: Icon(Icons.person, color: Color(0xFFFF725E)),
                                contentPadding: EdgeInsets.all(20.0),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20.0),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20,),
                      Column(
                        children: <Widget>[
                          Container(
                            width: 350,
                            child: TextField(
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Color(0xFFFDDCD7),
                                hintText: 'Email Id',
                                prefixIcon: Icon(Icons.email, color: Color(0xFFFF725E)),
                                contentPadding: EdgeInsets.all(20.0),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20.0),
                                ),
                              ),
                            ),
                          ), ],),
                      SizedBox(height: 20,),
                      Container(
                        width: 350,
                        child: TextField(
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Color(0xFFFDDCD7),
                            hintText: 'Password',
                            prefixIcon: Icon(Icons.lock, color: Color(0xFFFF725E)),
                            suffixIcon: Icon(Icons.remove_red_eye_rounded,
                                color: Color(0xFFFF725E)),
                            contentPadding: EdgeInsets.all(20.0),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 20.0),
                      Container(
                        width: 350,
                        child: TextField(
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Color(0xFFFDDCD7),
                            hintText: ' Confirm Password',
                            prefixIcon: Icon(Icons.lock, color: Color(0xFFFF725E)),
                            suffixIcon: Icon(Icons.remove_red_eye_rounded, color: Color(0xFFFF725E)),
                            contentPadding: EdgeInsets.all(20.0),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 30.0),
                      ElevatedButton(
                        onPressed: () {
                          // Button pressed logic
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Color(0xFFFF725E),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40.0),
                          ),
                        ),
                        child: Text('Register Now'),
                      ),
                      SizedBox(height: 30,),
                      InkWell(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(
                              builder: (context) => LoginScreen(),),);},
                        child: Container(
                          margin: EdgeInsets.symmetric(vertical: 20,),
                          padding: EdgeInsets.all(15),
                          alignment: Alignment.bottomCenter,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const <Widget>[
                              Text('Already have an account ?',
                                style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              SizedBox(width: 10,),
                              Text('Login',
                                style: TextStyle(
                                  color: Color(0xFFFF725E,),
                                  fontSize: 13,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(top: 40, left: 0,
                  child: InkWell(
                    onTap: () {Navigator.pop(context);},
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 10,),
                      child: Row(
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.only(left: 0, top: 10, bottom: 10,),
                            child: Icon(Icons.arrow_left,
                              color: Colors.black, size: 30,),
                          ),
                          Text('Back',
                            style: TextStyle(fontSize: 15,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}