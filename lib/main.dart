import 'package:flutter/material.dart';

void main() {
  runApp(PocketEdSplash());
}

class PocketEdSplash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5C7F7),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Spacer(),
          RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              style: TextStyle(
                fontSize: 36, 
                fontWeight: FontWeight.bold, 
                color: Colors.purple[900],
                fontFamily: 'Montserrat',
              ),
              children: [
                TextSpan(text: 'Pocket'),
                TextSpan(
                  text: 'Ed',
                  style: TextStyle(color: Colors.pinkAccent),
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Text(
              'Transforming young minds for a financially stable future.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16, 
                fontWeight: FontWeight.w500,
                color: Colors.purple[900],
                fontFamily: 'Montserrat',
              ),
            ),
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.only(bottom: 20.0),
            child: Image.asset(
              'assets/splash_bottom_graphic.png',
              width: MediaQuery.of(context).size.width * 0.85,
            ),
          ),
        ],
      ),
    );
  }
}
