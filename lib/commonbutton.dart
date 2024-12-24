import 'package:flutter/material.dart';

Widget commonButtonWithImage({
  required String imagePath,
  required VoidCallback onTap,
  double width = 40.0,
  double height = 40.0,
}) {
  return Material(
    color: Colors.transparent,
    borderRadius: BorderRadius.circular(30),
    child: InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(30), // Splash follows button shape
      splashColor: const Color.fromARGB(255, 0, 30, 255)
          .withOpacity(0.2), // Custom splash color
      hoverColor: const Color.fromARGB(73, 0, 179, 255), // Hover effect color
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200), // Animation duration
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(30), // Circular border radius
          border: Border.all(
            color:
                const Color.fromARGB(255, 0, 179, 255), // Blue border outline
            width: 1, // Outline thickness
          ),
        ),
        child: Center(
          child: Image.asset(
            height: 25,
            color: Colors.white,
            imagePath,
          ),
        ),
      ),
    ),
  );
}
