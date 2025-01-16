import 'package:flutter/material.dart';

import '../color/app_colors.dart';

class TopStoresSection extends StatelessWidget {
  const TopStoresSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 16.0),
        // Top Stores Section
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Text(
            "Top Stores",
            style: TextStyle(
              color: AppColors.color,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
        ),
        SizedBox(height: 16.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _buildStoreCard("Pixel Store", 'assets/images/store.jpg'),
            _buildStoreCard("Boutique Store", 'assets/images/store1.jpg'),
          ],
        ),
        SizedBox(height: 24.0),
        // New Store Section
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "New Store",
                style: TextStyle(
                  color: AppColors.color,
                  fontWeight: FontWeight.bold,
                  fontSize: 19,
                ),
              ),
              SizedBox(height: 4.0),
              Text(
                "Explore all the New Stores",
                style: TextStyle(
                  fontSize: 14.0,
                  color: Colors.grey[700],
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 16.0),
        // Store Banner Card
        _buildNewStoreCard(
          title: "Astrohorizon",
          description: "Flat ₹1000 OFF above ₹15000",
          imagePath: 'assets/images/astro_banner.jpg',
          distance: "3 Km",
          time: "55 mins",
          rating: "4.2",
        ),
      ],
    );
  }

  Widget _buildStoreCard(String title, String imagePath) {
    return Column(
      children: [
        Container(
          height: 180,
          width: 180,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.0),
            border: Border.all(color: AppColors.color),
          ),
          child: Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12.0),
              child: Image.asset(
                imagePath,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        SizedBox(height: 8.0),
        Text(
          title,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            color: AppColors.color,
          ),
        ),
      ],
    );
  }

  Widget _buildNewStoreCard({
    required String title,
    required String description,
    required String imagePath,
    required String distance,
    required String time,
    required String rating,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.0),
          border: Border.all(color: Colors.grey[300]!),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Image Banner
            ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(12.0),
                topRight: Radius.circular(12.0),
              ),
              child: Image.asset(
                imagePath,
                height: 150,
                width: double.infinity,
                fit: BoxFit.fill,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Time and Distance Row
                  Row(
                    children: [
                      Icon(Icons.access_time, size: 16.0, color: Colors.grey),
                      SizedBox(width: 4.0),
                      Text(time,
                          style: TextStyle(fontSize: 12.0, color: Colors.grey)),
                      SizedBox(width: 16.0),
                      Icon(Icons.location_on, size: 16.0, color: Colors.grey),
                      SizedBox(width: 4.0),
                      Text(distance,
                          style: TextStyle(fontSize: 12.0, color: Colors.grey)),
                    ],
                  ),
                  SizedBox(height: 8.0),
                  // Store Name
                  Text(
                    title,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16.0,
                      color: AppColors.color,
                    ),
                  ),
                  SizedBox(height: 4.0),
                  // Store Description
                  Text(
                    description,
                    style: TextStyle(
                      fontSize: 14.0,
                      color: Colors.grey[800],
                    ),
                  ),
                  SizedBox(height: 8.0),
                  // Rating Badge
                  Container(
                    padding:
                        EdgeInsets.symmetric(vertical: 2.0, horizontal: 8.0),
                    decoration: BoxDecoration(
                      color: Colors.green[100],
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    child: Text(
                      rating,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 12.0,
                        color: Colors.green[800],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
