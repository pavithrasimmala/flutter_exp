import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// Main widget demonstrating state management with both setState and Provider
class Exp5Page extends StatelessWidget {
  const Exp5Page({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      // Provide an instance of CounterModel to descendants
      create: (_) => CounterModel(),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center, // Center children vertically
        children: [
          const Text("Stateful Example with setState:"),

          // Stateful widget that manages its own internal state
          StatefulCounter(),

          const Divider(), // Horizontal divider between examples

          const Text("Provider Example:"),

          // Widget that consumes the CounterModel using Provider package
          const ConsumerCounter(),
        ],
      ),
    );
  }
}

// Stateful widget example using setState to update UI
class StatefulCounter extends StatefulWidget {
  @override
  State<StatefulCounter> createState() => _StatefulCounterState();
}

class _StatefulCounterState extends State<StatefulCounter> {
  int count = 0; // Internal state variable

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("Count: $count"), // Display current count
        ElevatedButton(
          onPressed: () => setState(() => count++), // Increment count on button press
          child: const Text("Increment"),
        ),
      ],
    );
  }
}

// ChangeNotifier model used for Provider example
class CounterModel extends ChangeNotifier {
  int count = 0; // Counter value

  // Method to increment the count and notify listeners to rebuild UI
  void increment() {
    count++;
    notifyListeners();
  }
}

// Stateless widget consuming CounterModel using Provider's context.watch
class ConsumerCounter extends StatelessWidget {
  const ConsumerCounter({super.key});

  @override
  Widget build(BuildContext context) {
    final counter = context.watch<CounterModel>(); // Listen for changes in CounterModel

    return Column(
      children: [
        Text("Count: ${counter.count}"), // Display count from Provider
        ElevatedButton(
          onPressed: counter.increment, // Call increment method on button press
          child: const Text("Increment"),
        ),
      ],
    );
  }
}
