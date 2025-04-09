import 'package:flutter/material.dart';
import 'package:flutter_clicks/main.dart';
import 'package:flutter_clicks/widgets/app_card.dart';
import 'package:flutter_clicks/widgets/app_header.dart';
import 'package:flutter_clicks/widgets/app_search.dart';
import '../data/mock_data.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // Transparent AppBar with terrain icon
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: IconThemeData(color: mainColor),
        title: Center(child: Icon(Icons.terrain, color: mainColor, size: 40)),
        actions: [SizedBox(width: 50, height: 40)], // Placeholder for alignment
      ),
      // Sidebar Drawer
      drawer: Drawer(
        child: Container(
          padding: EdgeInsets.all(30),
          color: mainColor,
          alignment: Alignment.bottomLeft,
          child: Icon(Icons.terrain, color: Colors.white, size: 80),
        ),
      ),
      // Body content
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppHeader(), // Header widget
          AppSearch(), // Search bar widget
          // Horizontal list of mountain cards
          SizedBox(
            height: 280, // Set height to prevent overflow
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: mountItems.length,
              itemBuilder: (context, index) {
                return Container(
                  margin: const EdgeInsets.all(10),
                  child: AppCard(mount: mountItems[index]), // Custom card
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
