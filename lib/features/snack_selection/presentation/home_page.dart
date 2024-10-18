import 'package:flutter/material.dart';
import 'package:foodie_jp_app/features/snack_selection/domain/page_content.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Hintergrund Bild
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                    "assets/images/background_images/bg_mainscreen.png"),
              ),
            ),
          ),

          // Page Content
          const PageContent(
            cardImagePath: "assets/images/details/Top Card.png",
            burgerImagePath: "assets/images/graphs/Burger_3D.png",
            title: "Angi's yummy burger",
            subtitle: "Delish Big BEEF burger\nthat tastes like heaven",
            currencyIcon: Icons.currency_yen,
            price: "13.99",
            callToActionButton: "Add to order",
            ratingIcon: Icons.star,
            rating: "4.8",
          ),
        ],
      ),
    );
  }
}
