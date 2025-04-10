import 'package:flutter/material.dart';
import 'package:flutter_clicks/data/mock_category_data.dart';
import 'package:flutter_clicks/main.dart';
import 'package:flutter_clicks/pages/profile_page.dart';
import 'package:flutter_clicks/widgets/app_card.dart';
import 'package:flutter_clicks/widgets/app_category_list.dart';
import 'package:flutter_clicks/widgets/app_header.dart';
import 'package:flutter_clicks/widgets/app_search.dart';
import '../data/mock_card_data.dart';

/// Main entry point with bottom navigation
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // This variable holds the index of the selected navigation item.
  int _selectedIndex = 0;

  // List of pages to display based on the selected tab.
  final List<Widget> _pages = const [
    HomeContent(), // Our main Home content
    ProfilePage(), // Pseudo profile page for demonstration
  ];

  // Handle navigation tap
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

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
      // Display the selected page's content
      body: _pages[_selectedIndex],
      // BottomNavigationBar for switching between pages
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: mainColor,
        onTap: _onItemTapped,
      ),
    );
  }
}

/// The main Home content (scrollable vertical content)
class HomeContent extends StatelessWidget {
  const HomeContent({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      // Enables vertical scrolling when the content grows.
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Header Widget
          AppHeader(),
          // Search Bar Widget
          AppSearch(),
          // Horizontal list of mountain cards
          SizedBox(
            height: 280, // Fixed height to avoid overflow
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
            padding: const EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
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
            height: 150, // Fixed height for category cards
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
    );
  }
}
