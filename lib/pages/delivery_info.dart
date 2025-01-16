import 'package:flutter/material.dart';
import '../color/app_colors.dart';

class DeliveryInfo extends StatelessWidget {
  const DeliveryInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.color,
      ),
      child: // Delivery Info
          Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Row(
          children: [
            Icon(Icons.flash_on, color: Colors.yellow),
            SizedBox(width: 8),
            Text("INSTANT\n10 MINS",
                style: TextStyle(
                    color: Colors.white, fontWeight: FontWeight.bold)),
            Spacer(),
            Icon(Icons.location_on, color: Colors.white),
            SizedBox(width: 4),
            Text("505 5th floor, Sgahun Ar...",
                style: TextStyle(color: Colors.white)),
            const SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
    );
  }
}
