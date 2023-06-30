
import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {

  ReusableCard({required this.colour, required this.cardChild});
  final Color colour;
  final Widget cardChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        border: Border.all(
          color: const Color(0xFF533535), // Border color
          width: 2.0, // Border width
        ),
        boxShadow: const [
          BoxShadow(
            color: Color(0xFF533535),// Shadow color
            spreadRadius: 0, // Spread radius
            blurRadius: 0, // Blur radius
            offset: Offset(5, 4), // Offset in the horizontal and vertical direction
          ),
        ],
        color: colour,
        borderRadius: BorderRadius.circular(16.0),
      ),
    );
  }
}