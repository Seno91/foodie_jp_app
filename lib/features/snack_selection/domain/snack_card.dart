import 'package:flutter/material.dart';
import 'package:foodie_jp_app/features/snack_selection/domain/details_screen.dart';

class SnackCard extends StatelessWidget {
  const SnackCard({
    super.key,
    required this.title,
    required this.subtitle,
    required this.imagePath,
    required this.price,
    required this.currencyIcon,
  });
  final String title;
  final String subtitle;
  final String imagePath;
  final String price;
  final IconData currencyIcon;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showModalBottomSheet(
          isScrollControlled: true,
          context: context,
          builder: (BuildContext context) => const DetailsScreen(),
        );
      },
      child: ClipRRect(
        borderRadius: BorderRadius.circular(24),
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              colors: [
                Color.fromARGB(255, 102, 76, 206),
                Color.fromARGB(130, 203, 206, 237),
              ],
            ),
          ),
          width: 180,
          child: Padding(
            padding: const EdgeInsets.only(
              left: 16.0,
              right: 16.0,
              bottom: 16.0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: SizedBox(
                    height: 150,
                    child: Image.asset(imagePath),
                  ),
                ),
                Text(
                  title,
                  style: const TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w800),
                ),
                Text(
                  subtitle,
                  style: const TextStyle(color: Colors.white54),
                ),
                const SizedBox(height: 16),
                Row(
                  children: [
                    Icon(currencyIcon, color: Colors.white, size: 16),
                    Text(
                      price,
                      style: const TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w500),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
