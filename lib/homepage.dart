// ignore_for_file: unnecessary_const

import 'dart:ui';

import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  "assets/images/background_images/bg_startscreen.png",
                ),
              ),
            ),
          ),
          Positioned(
            top: 100,
            left: 0.1,
            child: SizedBox(
              height: 518,
              child: Image.asset(
                alignment: Alignment.centerLeft,
                fit: BoxFit.cover,
                "assets/images/graphs/chick cupcakes_3D.png",
              ),
            ),
          ),
          Positioned(
            bottom: 140,
            child: Image.asset(
              "assets/images/details/T2.png",
            ),
          ),
          Positioned(
            bottom: 135,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                child: Container(
                  height: 200,
                  width: 350,
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.03),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: Column(
                      children: [
                        const Text(
                          "Feeling Snackish Today?",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.w800,
                            color: Colors.white,
                            fontSize: 24,
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(right: 15, left: 15),
                          child: Opacity(
                            opacity: 0.5,
                            child: const Text(
                              "Explore Angi's most popular snack selection and get instantly happy",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: GestureDetector(
                            onTap: () {},
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
                                child: const Text(
                                  "Order Now",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w800,
                                      color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
