import 'package:flutter/material.dart';

import '../color/app_colors.dart';

class CategorySection extends StatelessWidget {
  const CategorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 5),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Row(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("Explore By Categories",
                  style: TextStyle(
                      color: AppColors.color,
                      fontWeight: FontWeight.bold,
                      fontSize: 19)),
              Spacer(),
              Text("See All",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: AppColors.color,
                  )),
              SizedBox(width: 8.0),
              Icon(
                Icons.arrow_forward_ios,
                size: 19,
              )
            ],
          ),
        ),
        SizedBox(height: 16.0),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildCategoryCard("Bakery", 'assets/images/list3.jpg'),
              _buildCategoryCard(
                  "Fashion & Apparel", 'assets/images/list4.png'),
              _buildCategoryCard(
                  "Agriculture & Farming", 'assets/images/list2.png'),
              _buildCategoryCard("General Store", 'assets/images/list1.png'),
            ],
          ),
        ),
      ],
    );
  }
}

Widget _buildCategoryCard(String title, String imagePath) {
  return Container(
    margin: EdgeInsets.only(left: 16.0),
    width: 90,
    child: Column(
      children: [
        Container(
          height: 80,
          width: 80,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.0),
            border: Border.all(color: Colors.purple[100]!),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(12.0),
            child: Image.asset(
              imagePath,
              fit: BoxFit.fill,
            ),
          ),
        ),
        SizedBox(height: 8.0),
        Text(
          title,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 12.0,
            fontWeight: FontWeight.bold,
            color: Colors.purple[900],
          ),
        ),
      ],
    ),
  );
}
