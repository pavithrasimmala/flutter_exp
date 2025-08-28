import 'package:flutter/material.dart';

// Stateless widget that adapts layout based on screen width
class Exp3Page extends StatelessWidget {
  const Exp3Page({super.key});

  @override
  Widget build(BuildContext context) {
    // Get the size of the current screen
    var size = MediaQuery.of(context).size;

    // Define a breakpoint for large screens (width > 600 pixels)
    bool isLarge = size.width > 600;

    return Center(
      // Center the child widget within the available space
      child: Container(
        padding: const EdgeInsets.all(20), // Add padding inside the container
        // Background color changes depending on screen size
        color: isLarge ? Colors.green[200] : Colors.blue[200],
        child: Text(
          // Display different text depending on screen size, including width value
          isLarge
              ? "Large Screen Layout (${size.width}px)"
              : "Small Screen Layout (${size.width}px)",
          style: const TextStyle(
            fontSize: 18, // Text size 18 pixels
          ),
        ),
      ),
    );
  }
}
