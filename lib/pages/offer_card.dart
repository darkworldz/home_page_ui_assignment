import 'package:flutter/material.dart';

class OfferCard extends StatelessWidget {
  const OfferCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          _buildOfferCard(
              "Groceries\nGet 100% off",
              Image.asset(
                'assets/images/discount.png',
                fit: BoxFit.cover,
              )),
          _buildOfferCard(
              "VosoShop\nNew User Offer",
              Image.asset(
                'assets/images/discount.png',
                fit: BoxFit.cover,
              )),
          _buildOfferCard("Extra Savings\nOn Orders",
              Image.asset('assets/images/discount2.png')),
        ],
      ),
    );
  }

  Widget _buildOfferCard(String text, Image image) {
    return Container(
      margin: EdgeInsets.only(left: 1.0),
      width: 250,
      decoration: BoxDecoration(
        // color: Colors.purple[100],
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Expanded(
        child: ClipRRect(borderRadius: BorderRadius.circular(12), child: image),
      ),
    );
  }
}
