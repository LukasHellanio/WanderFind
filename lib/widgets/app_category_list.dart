import 'package:flutter/material.dart';
import 'package:flutter_clicks/main.dart';
import 'package:flutter_clicks/models/category_model.dart';

class AppCategory extends StatelessWidget {
  final CategoryModel categoryItem;

  const AppCategory({super.key, required this.categoryItem});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100,
      height: 100,
      child: Card(
        elevation: 4,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(categoryItem.icon, size: 40, color: mainColor),
              const SizedBox(height: 12),
              Text(
                categoryItem.category,
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
