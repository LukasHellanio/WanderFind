import 'package:flutter/material.dart';
import 'package:flutter_clicks/main.dart';
import 'package:flutter_clicks/pages/home_page.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  bool _showButton = false;

  @override
  void initState() {
    super.initState();
    // Wait for 2 seconds, then show the login button instead of loading
    Future.delayed(const Duration(seconds: 2), () {
      setState(() {
        _showButton = true;
      });
    });
  }

  void _goToHomePage() {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (context) => const HomePage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: mainColor, // Background color for the splash screen
      child: Stack(
        children: [
          // Centered icon
          const Center(
            child: Icon(Icons.terrain, color: Colors.white, size: 98),
          ),
          // Positioned widget: either loading or button
          Positioned(
            bottom: 80,
            left: 0,
            right: 0,
            child: Center(
              child:
                  _showButton
                      ? ElevatedButton(
                        onPressed: _goToHomePage,
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          foregroundColor: mainColor,
                          padding: const EdgeInsets.symmetric(
                            horizontal: 30,
                            vertical: 12,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                        child: const Text(
                          'Login',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      )
                      : const CircularProgressIndicator(
                        valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                      ),
            ),
          ),
        ],
      ),
    );
  }
}
