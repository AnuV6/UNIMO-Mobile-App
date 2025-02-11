import 'package:flutter/material.dart';

class GetStartedButton extends StatelessWidget {
  final VoidCallback? onPressed;

  const GetStartedButton({
    Key? key,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity, // Makes the button full width
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blue, // Match the bright blue color
          foregroundColor: Colors.white, // White text color
          padding:
              const EdgeInsets.symmetric(vertical: 16), // Add vertical padding
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25), // Rounded corners
          ),
          elevation: 0, // No shadow
        ),
        child: const Text(
          'Get started',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}

// Usage example:
// GetStartedButton(
//   onPressed: () {
//     // Handle button press
//   },
// )