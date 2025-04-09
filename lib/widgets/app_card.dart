import 'package:flutter/material.dart';
import '../models/mount_model.dart';

class AppCard extends StatelessWidget {
  final MountModel mount;

  const AppCard({super.key, required this.mount});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      clipBehavior: Clip.antiAlias,
      child: Stack(
        children: [
          Ink.image(
            image: NetworkImage(mount.path),
            fit: BoxFit.cover,
            width: 150,
            height: 280,
            child: InkWell(
              onTap: () {}, // Optional
            ),
          ),
          Positioned(
            bottom: 10,
            left: 10,
            right: 10,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  mount.name,
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    shadows: [Shadow(blurRadius: 4, color: Colors.black)],
                  ),
                ),
                Text(
                  mount.location,
                  style: const TextStyle(
                    color: Colors.white,
                    shadows: [Shadow(blurRadius: 4, color: Colors.black)],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
