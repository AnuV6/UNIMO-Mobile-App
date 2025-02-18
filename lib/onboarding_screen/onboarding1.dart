import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: WelcomeScreen(),
    debugShowCheckedModeBanner: false,
  ));
}

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 240), // Top padding

            // Title Text
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Text(
                'Welcome to Unimo!',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue, // Title color
                ),
              ),
            ),

            const SizedBox(height: 10), // Space between Title and Description

            // Description Text
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Text(
                'No more guessing! Check real-time campus facility occupancy before you go.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.black54,
                ),
              ),
            ),

            const SizedBox(
                height: 30), // Space between Description and Pagination Dots

            // Pagination Dots
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildDot(isActive: true),
                _buildDot(isActive: false),
                _buildDot(isActive: false),
              ],
            ),
          ],
        ),
      ),
    );
  }

  // Pagination Dot Builder
  Widget _buildDot({required bool isActive}) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 5),
      height: 8,
      width: isActive ? 10 : 8,
      decoration: BoxDecoration(
        color: isActive ? Colors.blue : Colors.blue[100],
        shape: BoxShape.circle,
      ),
    );
  }
}
