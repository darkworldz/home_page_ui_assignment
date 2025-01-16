import 'package:flutter/material.dart';

import '../color/app_colors.dart';

class Promo extends StatelessWidget {
  const Promo({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 16.0, vertical: 15.0),
            padding: EdgeInsets.symmetric(vertical: 9.0, horizontal: 15.0),
            decoration: BoxDecoration(
              color: Colors.purple[50], // Background color for the container
              borderRadius: BorderRadius.horizontal(
                left: Radius.circular(14.0), // Rounded from the left
                right: Radius.circular(14.0), // Rounded from the right
              ),
            ),
            child: Row(
              children: [
                Icon(
                  Icons.discount_rounded,
                  size: 20,
                ),
                const SizedBox(
                  width: 3,
                ),
                Text(
                  "Get 10% Off on adding items worth ₹999 to cart!", // Your desired text
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                    color: AppColors.color, // Match the app's theme color
                  ),
                  textAlign: TextAlign.center, // Center the text horizontally
                  softWrap: true,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
