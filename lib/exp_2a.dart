import 'package:flutter/material.dart'; // Import Flutter material components

// Stateless widget for the Exp2aPage
class Exp2aPage extends StatelessWidget {
  const Exp2aPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      // Adds padding around the entire content
      padding: const EdgeInsets.all(16),
      child: Column(
        // Align children to the start of the cross axis (left)
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Text widget with styling
          const Text(
            "Hello Flutter!",
            style: TextStyle(
              fontSize: 24,            // Font size 24
              fontWeight: FontWeight.bold, // Bold text
              color: Colors.blue,       // Blue color
            ),
          ),
          const SizedBox(height: 20),  // Adds vertical spacing of 20 pixels
          
          // Displays an image from the network (web URL)
          Image.network(
            "https://images.unsplash.com/photo-1506744038136-46273834b3fb", // Image URL
            height: 150,                 // Set image height to 150 pixels
            fit: BoxFit.cover,           // Cover the container maintaining aspect ratio
          ),
          const SizedBox(height: 20),  // Adds vertical spacing of 20 pixels
          
          // Container widget with padding, background color and rounded corners
          Container(
            padding: const EdgeInsets.all(12), // Padding inside the container
            decoration: BoxDecoration(
              color: Colors.amber[200],         // Light amber background color
              borderRadius: BorderRadius.circular(8), // Rounded corners radius 8
            ),
            child: const Text("This is inside a Container widget."), // Text inside container
          ),
        ],
      ),
    );
  }
}
