import 'package:flutter/material.dart';

class DrinksButton extends StatelessWidget {
  const DrinksButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8),
      child: Container(
        height: 40,
        width: 75,
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.white.withOpacity(0.4),
          ),
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(20),
        ),
        child: const Padding(
          padding: EdgeInsets.only(left: 15),
          child: Row(
            children: [
              SizedBox(
                width: 3,
              ),
              Text(
                "Drinks",
                style: TextStyle(
                  color: Colors.white54,
                  fontWeight: FontWeight.w700,
                  fontSize: 10,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
