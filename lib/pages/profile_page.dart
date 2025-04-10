import 'package:flutter/material.dart';
import 'package:flutter_clicks/main.dart';
import 'package:flutter_clicks/models/profile_model.dart';
import '../data/mock_profile_data.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Avatar and name
            Row(
              children: [
                ClipOval(
                  child: Image.network(
                    'https://avatars.githubusercontent.com/u/31229434?v=4&size=64',
                    width: 80,
                    height: 80,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(width: 10),
                Text(
                  userProfile.name,
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            // Description
            Text(
              userProfile.description,
              style: TextStyle(color: Colors.blueGrey, fontSize: 15),
            ),
            const SizedBox(height: 20),
            // Social media icons (Instagram and WhatsApp placeholder)
            Row(
              children: [
                IconButton(
                  icon: const Icon(Icons.facebook), // Placeholder
                  onPressed: () {},
                ),
                IconButton(
                  icon: const Icon(Icons.email), // Placeholder
                  onPressed: () {},
                ),
              ],
            ),
            const SizedBox(height: 20),
            // Achievements section
            Text(
              'Achievements',
              style: TextStyle(
                color: mainColor,
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
            ),
            const SizedBox(height: 10),
            // Container for the achievements with scroll
            SizedBox(
              height: 320, // Define a fixed height for the achievement section
              child: ListView.builder(
                itemCount: userProfile.achievements.length,
                itemBuilder: (context, index) {
                  final achievement = userProfile.achievements[index];
                  return AnimatedOpacity(
                    opacity: 1.0,
                    duration: Duration(milliseconds: 500 * (index + 1)),
                    child: Card(
                      elevation: 4,
                      margin: const EdgeInsets.symmetric(vertical: 8),
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ListTile(
                              leading: const Icon(
                                Icons.star,
                                color: Colors.amber,
                              ),
                              title: Text(achievement.title),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: Text(
                                'Achieved on: ${achievement.date}',
                                style: TextStyle(color: Colors.grey[600]),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
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
