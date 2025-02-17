import 'package:flutter/material.dart' show BorderRadius, BuildContext, Color, Colors, EdgeInsets, ElevatedButton, FontWeight, RoundedRectangleBorder, SizedBox, StatelessWidget, Text, TextStyle, VoidCallback, Widget;

class GetStartedButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final String text; // Allow customizable text
  final Color color; // Allow customizable color

  const GetStartedButton({
    super.key,
    this.onPressed,
    this.text = 'Login', // Default to 'Login' as per UI
    this.color = Colors.blue, // Default to bright blue
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
          foregroundColor: Colors.white,
          padding: const EdgeInsets.symmetric(vertical: 16),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30), // More rounded corners
          ),
          elevation: 0, // No shadow
        ),
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600, // Slightly bolder
          ),
        ),
      ),
    );
  }
}
