import 'package:flutter/material.dart';
import 'package:flutter_clicks/main.dart';
import 'package:flutter_clicks/widgets/app_header.dart';
import 'package:flutter_clicks/widgets/app_search.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: IconThemeData(color: mainColor),
        title: Center(child: Icon(Icons.terrain, color: mainColor, size: 40)),
        actions: [SizedBox(width: 50, height: 40)],
      ),
      drawer: Drawer(
        child: Container(
          padding: EdgeInsets.all(30),
          color: mainColor,
          alignment: Alignment.bottomLeft,
          child: Icon(Icons.terrain, color: Colors.white, size: 80),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [AppHeader(), AppSearch()],
      ),
    );
  }
}
