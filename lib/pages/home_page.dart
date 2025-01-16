import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:home_page_ui_assignment/pages/category_section.dart';
import 'package:home_page_ui_assignment/pages/delivery_info.dart';
import 'package:home_page_ui_assignment/pages/offer_card.dart';
import 'package:home_page_ui_assignment/pages/promo.dart';
import 'package:home_page_ui_assignment/pages/top_stores_section.dart';

import '../color/app_colors.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: AppColors.color,
        elevation: 0,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("VOSOSHOP",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            Text("Groceries delivered fresh and fast",
                style: TextStyle(color: Colors.white70, fontSize: 14)),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Icon(Icons.notifications, color: Colors.white),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Search Bar
            Container(
              decoration: BoxDecoration(
                color: AppColors.color,
              ),
              child: Container(
                decoration: BoxDecoration(
                  color: AppColors.color,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: "Search for store/item",
                            prefixIcon: CupertinoButton(
                                onPressed: () {}, child: Icon(Icons.search)),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12.0),
                              borderSide: BorderSide.none,
                            ),
                            suffixIcon: CupertinoButton(
                                onPressed: () {}, child: Icon(Icons.mic)),
                            filled: true,
                            fillColor: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(width: 8),
                    ],
                  ),
                ),
              ),
            ),
            // Delivery Info
            DeliveryInfo(),
            SizedBox(height: 16),
            // Offer Carousel
            OfferCard(),
            // 10% off promo
            Promo(),
            SizedBox(height: 8),
            // Category Section
            CategorySection(),
            SizedBox(height: 16),
            // Top Stores Section
            TopStoresSection(),
            const SizedBox(
              height: 20,
            ),
            OfferCard(),
          ],
        ),
      ),

      // Bottom Navigation Bar
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: AppColors.color,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.category), label: "Categories"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart), label: "Cart"),
        ],
      ),
    );
  }
}
