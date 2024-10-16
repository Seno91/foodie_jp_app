import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:foodie_jp_app/features/snack_selection/domain/drinks_button.dart';
import 'package:foodie_jp_app/features/snack_selection/domain/drop_down_button.dart';
import 'package:foodie_jp_app/features/snack_selection/domain/salty_button.dart';
import 'package:foodie_jp_app/features/snack_selection/domain/snack_card.dart';
import 'package:foodie_jp_app/features/snack_selection/domain/sweet_button.dart';

class PageContent extends StatelessWidget {
  const PageContent({
    super.key,
    required this.title,
    required this.subtitle,
    required this.cardImagePath,
    required this.burgerImagePath,
    required this.rating,
    required this.price,
    required this.ratingIcon,
    required this.currencyIcon,
    required this.callToActionButton,
  });
  final String title;
  final String subtitle;
  final String cardImagePath;
  final String burgerImagePath;
  final String rating;
  final String price;
  final IconData ratingIcon;
  final IconData currencyIcon;
  final String callToActionButton;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            // Title
            const Padding(
              padding: EdgeInsets.only(right: 50),
              child: Text(
                "Choose Your Favorite\nSnack",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w900,
                    fontSize: 25),
              ),
            ),

            // Space
            const SizedBox(height: 15),

            // Button Row
            const SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  DropDownButtonMenu(),
                  SaltyButton(),
                  SweetButton(),
                  DrinksButton()
                ],
              ),
            ),

            // Burger Card
            const SizedBox(height: 28),
            Stack(
              children: [
                // Card Image

                ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(30)),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 24, sigmaY: 24),
                    child: Image.asset(
                      cardImagePath,
                      color: Colors.white.withOpacity(0.05),
                    ),
                  ),
                ),

                // Burger Image
                Positioned(
                  top: 40,
                  right: -5,
                  child: Image.asset(
                    burgerImagePath,
                  ),
                ),
                Positioned(
                  top: 16,
                  left: 24,
                  child: Text(
                    title,
                    style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  ),
                ),
                Positioned(
                  top: 18,
                  left: 305,
                  child: Text(
                    //rating
                    rating,
                    style: const TextStyle(
                        color: Colors.white60,
                        fontWeight: FontWeight.w600,
                        fontSize: 10),
                  ),
                ),
                Positioned(
                  top: 18,
                  left: 290,
                  child: Icon(ratingIcon,
                      color: const Color.fromARGB(255, 231, 106, 196),
                      size: 14),
                ),
                Positioned(
                  top: 80,
                  left: 20,
                  child: Icon(currencyIcon, color: Colors.white, size: 20),
                ),
                Positioned(
                  top: 78,
                  left: 42,
                  child: Text(
                    //price
                    price,
                    style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  ),
                ),
                Positioned(
                  top: 40,
                  left: 24,
                  child: Text(
                    subtitle,
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 9,
                        fontWeight: FontWeight.w400),
                  ),
                ),
                Positioned(
                  top: 177,
                  left: 16,
                  child: Container(
                    height: 40,
                    width: 105,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: const Color.fromARGB(255, 253, 167, 196),
                      ),
                      color: const Color.fromARGB(255, 196, 129, 208),
                      borderRadius: BorderRadius.circular(8),
                      boxShadow: const [
                        BoxShadow(
                          color: Color.fromARGB(255, 226, 115, 152),
                          spreadRadius: 5,
                          blurRadius: 10,
                          offset: Offset(0, 1),
                        ),
                      ],
                      gradient: const LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: [
                          Color.fromARGB(255, 218, 152, 230),
                          Color.fromARGB(255, 176, 104, 205)
                        ],
                      ),
                    ),
                    child: Row(
                      children: [
                        const SizedBox(
                          width: 12,
                        ),
                        Text(
                          callToActionButton,
                          style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 25,
            ),
            const Align(
              alignment: Alignment.bottomLeft,
              child: Text(
                "We Recommend",
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            const SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SnackCard(
                    title: "Mogli's Cup",
                    subtitle: "Strawberry ice cream",
                    imagePath: "assets/images/graphs/cat cupcakes_3D.png",
                    price: "8.99",
                    currencyIcon: Icons.currency_yen,
                  ),
                  SizedBox(
                    // Hier noch auf 24 stellen nach den Images!!
                    width: 24,
                  ),
                  SnackCard(
                    title: "Balu's Cup",
                    subtitle: "Pistachio ice cream",
                    imagePath: "assets/images/graphs/Ice.cream.png",
                    price: "8.99",
                    currencyIcon: Icons.currency_yen,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
