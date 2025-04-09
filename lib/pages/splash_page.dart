import 'package:flutter/material.dart';
import 'package:flutter_clicks/main.dart';
import 'package:flutter_clicks/pages/home_page.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    // Delays for 2 seconds and then navigates to the HomePage.
    // Using initState ensures this runs only once when the widget is created.
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => const HomePage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: mainColor, // Background color for the splash screen
      child: Stack(
        children: const [
          // Centered icon
          Center(child: Icon(Icons.terrain, color: Colors.white, size: 98)),
          // Positioned loading indicator at the bottom
          Positioned(
            bottom: 80,
            left: 0,
            right: 0,
            child: Center(
              child: CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
