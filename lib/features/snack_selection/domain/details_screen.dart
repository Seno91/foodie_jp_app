import 'dart:ui';

import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        height: 750,
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
            colors: [
              Color.fromARGB(255, 80, 79, 79),
              Color.fromARGB(231, 24, 10, 4),
            ],
          ),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Positioned(
              left: -50,
              top: -200,
              child: Transform.scale(
                scale: 0.7,
                child: Image.asset(
                  "assets/images/graphs/cat cupcakes_3D.png",
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(35, 160, 35, 160),
              child: ClipRRect(
                child: BackdropFilter(
                  filter: ImageFilter.blur(
                    sigmaX: 5,
                    sigmaY: 5,
                  ),
                  child: SizedBox(
                    width: double.infinity,
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.white12),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      height: 360,
                      child: const Padding(
                        padding: EdgeInsets.fromLTRB(24, 8, 24, 8),
                        child: Center(
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Icon(
                                      Icons.favorite_border_outlined,
                                      color: Colors.white24,
                                      size: 12,
                                    ),
                                    Text(
                                      " 200",
                                      style: TextStyle(
                                        color: Colors.white24,
                                        fontSize: 12,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Text(
                                "Mogli's Cup",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w900,
                                    fontSize: 20),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Text(
                                "Lorem ipsum dolor sit amet, consetetur sadipscing elitr,sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum.",
                                style: TextStyle(
                                  color: Colors.white30,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 13,
                                ),
                                textAlign: TextAlign.center,
                              ),
                              SizedBox(
                                height: 16,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.currency_yen,
                                    color: Colors.white,
                                    size: 14,
                                  ),
                                  Text(
                                    "8.99",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w700),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Divider(
                                color: Colors.white,
                                thickness: 0.1,
                              ),
                              SizedBox(
                                height: 16,
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  bottom: 10,
                                ),
                                child: Row(
                                  children: [
                                    Text(
                                      "Ingredients",
                                      style: TextStyle(
                                        color: Colors.white70,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 11,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 75,
                                    ),
                                    Text(
                                      "Reviews",
                                      style: TextStyle(
                                        color: Colors.white70,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 11,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.filter_drama_outlined,
                                    size: 20,
                                    color: Colors.white70,
                                  ),
                                  SizedBox(
                                    width: 2,
                                  ),
                                  Icon(
                                    Icons.favorite_border,
                                    size: 20,
                                    color: Colors.white70,
                                  ),
                                  SizedBox(
                                    width: 2,
                                  ),
                                  Icon(
                                    Icons.sports_martial_arts_outlined,
                                    size: 20,
                                    color: Colors.white70,
                                  ),
                                  SizedBox(
                                    width: 2,
                                  ),
                                  Icon(
                                    Icons.yard_outlined,
                                    size: 20,
                                    color: Colors.white70,
                                  ),
                                  SizedBox(
                                    width: 50,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.white,
                                    size: 20,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.white,
                                    size: 20,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.white,
                                    size: 20,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.white,
                                    size: 20,
                                  ),
                                  Icon(
                                    Icons.star_border_outlined,
                                    color: Colors.white,
                                    size: 20,
                                  ),
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Text(
                                    "4.0",
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 620,
              left: 75,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  boxShadow: const [
                    BoxShadow(
                      color: Color.fromARGB(255, 226, 115, 152),
                      spreadRadius: 5,
                      blurRadius: 15,
                      offset: Offset(0, 5),
                    ),
                  ],
                  gradient: const LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [
                      Color.fromARGB(255, 255, 112, 160),
                      Color.fromARGB(255, 255, 149, 230)
                    ],
                  ),
                ),
                width: 250,
                height: 50,
                child: const Center(
                  child: Text(
                    "Add to order for 8.99",
                    style: TextStyle(
                      fontWeight: FontWeight.w800,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
