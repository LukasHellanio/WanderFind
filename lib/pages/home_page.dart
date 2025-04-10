import 'package:flutter/material.dart';
import 'package:flutter_clicks/data/mock_category_data.dart';
import 'package:flutter_clicks/main.dart';
import 'package:flutter_clicks/widgets/app_card.dart';
import 'package:flutter_clicks/widgets/app_category_list.dart';
import 'package:flutter_clicks/widgets/app_header.dart';
import 'package:flutter_clicks/widgets/app_search.dart';
import '../data/mock_card_data.dart';

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
        actions: [
          // Placeholder for alignment
          SizedBox(width: 50, height: 40),
        ],
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
      // Main content with vertical scrolling enabled
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header Widget
            AppHeader(),
            // Search Bar Widget
            AppSearch(),
            // Horizontal list of mountain cards
            SizedBox(
              height: 280, // Set height to avoid overflow
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: mountItems.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin: const EdgeInsets.all(10),
                    child: AppCard(mount: mountItems[index]),
                  );
                },
              ),
            ),
            // Section header for categories with "See more" action
            Container(
              padding: EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Category',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'See more',
                    style: TextStyle(
                      color: mainColor,
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            // Horizontal list of category cards
            SizedBox(
              height: 150, // Set height for category cards
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: categories.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin: const EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 8,
                    ),
                    child: AppCategory(categoryItem: categories[index]),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
