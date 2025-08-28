import 'package:flutter/material.dart';

// Stateless widget for Exp2bPage demonstrating Row, Column, and Stack layouts
class Exp2bPage extends StatelessWidget {
  const Exp2bPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Text label for Row example
        const Text("Row Example"),
        
        // Row widget to arrange children horizontally with equal spacing
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Evenly space icons horizontally
          children: const [
            Icon(Icons.star, color: Colors.orange),  // Orange star icon
            Icon(Icons.star, color: Colors.purple),  // Purple star icon
            Icon(Icons.star, color: Colors.teal),    // Teal star icon
          ],
        ),
        
        const SizedBox(height: 20), // Vertical spacing between sections
        
        // Text label for Column example
        const Text("Column Example"),
        
        // Column widget to arrange children vertically
        Column(
          children: const [
            Text("Item 1"),  // First item text
            Text("Item 2"),  // Second item text
            Text("Item 3"),  // Third item text
          ],
        ),
        
        const SizedBox(height: 20), // Vertical spacing between sections
        
        // Text label for Stack example
        const Text("Stack Example"),
        
        // Expanded widget allows Stack to take remaining vertical space
        Expanded(
          child: Stack(
            children: [
              // Background container filling the stack with light blue color
              Container(color: Colors.lightBlue),
              
              // Centered container with deep orange color and fixed size
              Align(
                alignment: Alignment.center,
                child: Container(
                  color: Colors.deepOrange,
                  width: 100,
                  height: 100,
                ),
              ),
              
              // Star icon aligned to bottom right corner with indigo color
              const Align(
                alignment: Alignment.bottomRight,
                child: Icon(Icons.star, size: 50, color: Colors.indigo),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
