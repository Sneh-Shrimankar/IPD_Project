import 'package:flutter/material.dart';

void main() {
  runApp(PocketEdApp());
}

class PocketEdApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PocketEdHome(),
    );
  }
}

class PocketEdHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5C7F7),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.8,
              decoration: BoxDecoration(
                color: Color(0xFFFFE6FF),
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: Colors.deepPurple,
                    blurRadius: 10,
                    spreadRadius: 10,
                    offset: Offset(0, 8),
                  ),
                ],
              ),
              padding: EdgeInsets.all(50),
              margin: EdgeInsets.symmetric(horizontal: 40),
              child: Column(
                children: [
                  RichText(
                    text: TextSpan(
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                      ),
                      children: [
                        TextSpan(
                          text: 'Pocket',
                          style: TextStyle(color: Colors.purple[900]),
                        ),
                        TextSpan(
                          text: 'Ed',
                          style: TextStyle(color: Colors.pinkAccent),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 50),
                  Image.asset(
                    'assets/welcome_cats.png',
                    height: 120,
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Column(
              children: [
                Text(
                  'Log In, Learn, and Lead',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
                Text(
                  'Your Financial Future!',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.pinkAccent,
                  ),
                ),
              ],
            ),
            SizedBox(height: 40),
            SizedBox(
              width: 250,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.pinkAccent,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                onPressed: () {},
                child: Text(
                  'Login',
                  style: TextStyle(fontSize: 18, color: Colors.deepPurple),
                ),
              ),
            ),
            SizedBox(height: 20),
            SizedBox(
              width: 250,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.pinkAccent,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                onPressed: () {},
                child: Text(
                'SignUp',
                style: TextStyle(
                fontSize: 18, 
                fontWeight: FontWeight.bold, // Make text bold
                color: Colors.deepPurple,
  ),
),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
