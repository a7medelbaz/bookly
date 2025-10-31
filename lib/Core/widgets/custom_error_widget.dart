import 'package:flutter/material.dart';

class CustomErrorWidget extends StatelessWidget {
  // 1. Added this variable to receive the error message
  const CustomErrorWidget({super.key, required this.errorMessage});

  final String errorMessage;

  @override
  Widget build(BuildContext context) {
    // 2. Used Center to place everything in the middle of the screen
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(20.0), // To add margins
        child: Column(
          // 3. Used Column to arrange elements vertically
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // 4. A clear error icon
            Icon(
              Icons.error_outline,
              color: Theme.of(
                context,
              ).colorScheme.error, // Use error color from theme
              size: 70,
            ),
            const SizedBox(height: 16),

            // 5. A fixed error title
            Text(
              'Oops! Something went wrong',
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 8),

            // 6. Display the actual error message that was passed
            Text(
              errorMessage,
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                color: Theme.of(
                  context,
                ).textTheme.bodyMedium?.color?.withValues(alpha: .8),
              ),
              textAlign: TextAlign.center,
            ),

            // You can add a "Retry Button" here if you want
          ],
        ),
      ),
    );
  }
}
