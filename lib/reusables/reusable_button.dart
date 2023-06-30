import 'package:flutter/material.dart';
import '../constants.dart';

class ReusableButtons extends StatelessWidget {
  ReusableButtons({
    super.key,
    required this.btnChild,
  });

  Widget btnChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: const Color(0xFF533535), // Border color
          width: 2.0, // Border width
        ),
        boxShadow: const [
          BoxShadow(
            color: Color(0xFF533535),// Shadow color
            spreadRadius: 0, // Spread radius
            blurRadius: 0, // Blur radius
            offset: Offset(2, 2), // Offset in the horizontal and vertical direction
          ),
        ],
      ),
      child: btnChild,
    );
  }
}