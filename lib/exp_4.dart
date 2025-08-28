import 'package:flutter/material.dart';

// Main widget that manages navigation between two screens using Navigator
class Exp4Page extends StatelessWidget {
  const Exp4Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Navigator(
      // onGenerateRoute handles routing logic based on route name
      onGenerateRoute: (settings) {
        // If route name is '/second', show SecondScreen
        if (settings.name == '/second') {
          return MaterialPageRoute(builder: (_) => const SecondScreen());
        }
        // Default route shows FirstScreen
        return MaterialPageRoute(builder: (_) => FirstScreen());
      },
    );
  }
}

// First screen displayed by default
class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      // Centered button to navigate to the second screen
      child: ElevatedButton(
        onPressed: () => Navigator.pushNamed(context, '/second'),
        child: const Text("Go to Second Screen"),
      ),
    );
  }
}

// Second screen shown when user navigates from FirstScreen
class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      // Centered button to go back to the previous screen (FirstScreen)
      child: ElevatedButton(
        onPressed: () => Navigator.pop(context),
        child: const Text("Back"),
      ),
    );
  }
}
