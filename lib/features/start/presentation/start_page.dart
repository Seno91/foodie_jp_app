// ignore_for_file: unnecessary_const

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:foodie_jp_app/features/start/domain/navigation.dart';

class StartPage extends StatelessWidget {
  const StartPage({super.key});

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
            bottom: 108,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                child: Container(
                  height: 228,
                  width: 340,
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.03),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.only(
                      top: 40,
                    ),
                    child: Column(
                      children: [
                        Text(
                          "Feeling Snackish Today?",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.w800,
                            color: Colors.white,
                            fontSize: 24,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            right: 15,
                            left: 15,
                          ),
                          child: Opacity(
                            opacity: 0.5,
                            child: Text(
                              "Explore Angi's most popular snack selection and get instantly happy",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Navigation(),
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
