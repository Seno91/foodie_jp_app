import 'dart:ui';

import 'package:flutter/material.dart';

class DropDownButtonMenu extends StatelessWidget {
  const DropDownButtonMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
        child: Container(
          height: 40,
          width: 150,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.white54),
            borderRadius: BorderRadius.circular(20),
            gradient: const LinearGradient(
              begin: Alignment.bottomLeft,
              end: Alignment.topRight,
              colors: [
                Color.fromARGB(255, 20, 19, 19),
                Color.fromARGB(255, 251, 144, 223),
              ],
            ),
          ),
          child: const Padding(
            padding: EdgeInsets.only(left: 15),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  Icons.fastfood_outlined,
                  color: Colors.white54,
                  size: 20,
                ),
                SizedBox(
                  width: 4.0,
                ),
                Text(
                  "All categories",
                  style: TextStyle(
                    color: Colors.white54,
                    fontWeight: FontWeight.w700,
                    fontSize: 11,
                  ),
                ),
                Icon(
                  Icons.expand_more,
                  color: Colors.white54,
                  size: 22,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
