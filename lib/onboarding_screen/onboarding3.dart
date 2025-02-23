import 'package:flutter/material.dart';
import 'package:unimo_mobile_app/Components/get_start_button.dart';
import 'package:unimo_mobile_app/Screens/login_screen.dart'; // Import LoginScreen

class Onboarding3 extends StatelessWidget {
  const Onboarding3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 240),
              // Trophy Image (Local Image)
              Image.asset(
                'assets/trophy.png', // Path to your local image
                height: 220,
                width: 520,
                fit: BoxFit.contain,
              ),
              const SizedBox(height: 32),
              // Title
              Text(
                'Earn Badges & Make an Impact!',
                style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                      color: Colors.blue,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 16),
              // Description
              Text(
                'Your contributions matter! Level up with badges\nand get recognized as a top contributor.',
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: Colors.black54,
                      height: 1.5,
                    ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 32),
              // Pagination Dots
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _buildDot(false),
                  _buildDot(false),
                  _buildDot(true),
                ],
              ),
              const Spacer(),
              // Get Started Button
              GetStartedButton(
                text: 'Get started',
                color: Colors.blue,
                onPressed: () {
                  // Navigate to the LoginScreen when the button is pressed
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const LoginScreen(),
                    ),
                  );
                },
              ),
              const SizedBox(height: 32),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildDot(bool isActive) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 4),
      width: 8,
      height: 8,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: isActive ? Colors.blue : Colors.blue.withOpacity(0.2),
      ),
    );
  }
}
