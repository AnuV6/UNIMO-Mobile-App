import 'package:flutter/material.dart';
import 'package:unimo_mobile_app/onboarding_screen/onboarding1.dart';
import 'package:unimo_mobile_app/onboarding_screen/onboarding2.dart';
import 'package:unimo_mobile_app/onboarding_screen/onboarding3.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'UNIMO APP',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 255, 255, 255),
        ),
        useMaterial3: true,
      ),
      home: const OnboardingPageView(),
    );
  }
}

class OnboardingPageView extends StatelessWidget {
  const OnboardingPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        physics:
            const BouncingScrollPhysics(), // Allows smooth sliding with bounce effect
        children: const [
          WelcomeScreen(), // First screen (Welcome Screen)
          Onboarding2(), // Second screen (Onboarding 1)
          Onboarding3(), // Third screen (Onboarding 2)
        ],
      ),
    );
  }
}
