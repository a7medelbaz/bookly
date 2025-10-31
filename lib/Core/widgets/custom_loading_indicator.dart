import 'package:flutter/material.dart';

class CustomLoadingIndicator extends StatelessWidget {
  const CustomLoadingIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    // 1. Use Center to place the indicator in the middle of the screen
    return Center(
      // 2. Wrap the indicator in a Card for a cleaner, modern look
      child: Card(
        color: const Color(0xff100B20), // Set the card'S background color
        elevation: 4, // Add a subtle shadow
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.0), // Rounded corners
        ),
        child: Padding(
          padding: const EdgeInsets.all(24.0), // Add spacing inside the card
          child: Column(
            mainAxisSize: MainAxisSize.min, // Make the column wrap its content
            children: [
              // 3. The standard Material Design loading indicator
              const CircularProgressIndicator(
                color: Colors.white, // Changed color to white for visibility
              ),
              const SizedBox(height: 20), // Space between indicator and text
              // 4. Add a text label
              Text(
                'Loading, please wait...',
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      color: Colors.white, // Changed color to white for visibility
                    ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

