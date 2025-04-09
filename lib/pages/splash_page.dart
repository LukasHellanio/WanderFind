import 'package:flutter/material.dart';
import 'package:flutter_clicks/main.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: mainColor,
      child: Stack(
        children: const [
          Center(child: Icon(Icons.terrain, color: Colors.white, size: 98)),
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
