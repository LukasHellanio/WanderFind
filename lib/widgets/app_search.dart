import 'package:flutter/material.dart';
import 'package:flutter_clicks/main.dart';

class AppSearch extends StatefulWidget {
  const AppSearch({super.key});

  @override
  State<AppSearch> createState() => _MyAppSearchState();
}

class _MyAppSearchState extends State<AppSearch> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Discover',
            style: TextStyle(fontWeight: FontWeight.w900, fontSize: 25),
          ),
          SizedBox(height: 20),
          Row(
            children: [
              Expanded(
                child: SizedBox(
                  height: 56,
                  child: SearchBar(
                    hintText: 'Search...',
                    leading: Icon(
                      Icons.search,
                      color: Colors.blueGrey.shade100,
                    ),
                    backgroundColor: WidgetStateProperty.all(
                      Colors.blueGrey.shade50,
                    ),
                    elevation: WidgetStateProperty.all(1),
                    shape: WidgetStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 10),
              SizedBox(
                height: 56,
                width: 56,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: mainColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    padding: EdgeInsets.zero,
                  ),
                  child: const Icon(Icons.tune, color: Colors.white, size: 30),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
