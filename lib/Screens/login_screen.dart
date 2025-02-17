import 'package:flutter/material.dart';
import 'package:unimo_mobile_app/Components/get_start_button.dart';
import 'package:unimo_mobile_app/Components/input_field.dart';
import 'package:unimo_mobile_app/Screens/registration_screen.dart'; // Import RegisterScreen

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isLoginSelected = true;
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: 40),

              // Logo Image
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/logo.png', // Replace with actual logo path
                    height: 80, // Adjust height if needed
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const Text(
                'Access real-time updates on faculty facilities from where ever you\'re at. Run by students for students.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 18.5,
                ),
              ),
              const SizedBox(height: 50),

              // Login and Sign Up tabs
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _buildTabButton('Login', true),
                  _buildTabButton('Sign Up', false),
                ],
              ),
              const SizedBox(height: 40),

              // Username input field
              UsernameInputField(
                controller: _usernameController,
                label: 'Username', // Correct label
              ),
              const SizedBox(height: 36),

              // Password input field
              UsernameInputField(
                controller: _passwordController,
                label: 'Password', // Updated label
              ),

              Align(
                alignment: Alignment.center,
                child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Forgot Password',
                    style: TextStyle(
                      color: Colors.blue, // Updated color to blue
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              const Spacer(),

              // Login button
              GetStartedButton(
                onPressed: () {
                  // Handle login logic here
                },
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }

  /// Builds a tab button for login/signup selection
  Widget _buildTabButton(String text, bool isSelected) {
    return InkWell(
      onTap: () {
        if (text == 'Sign Up') {
          // Navigate to RegisterScreen when 'Sign Up' is tapped
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const RegisterScreen()),
          );
        } else {
          setState(() {
            isLoginSelected = isSelected;
          });
        }
      },
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              text,
              style: TextStyle(
                color: isLoginSelected == isSelected
                    ? Colors.blue
                    : Colors.black54,
                fontSize: 16,
              ),
            ),
          ),
          const SizedBox(height: 8),
          if (isLoginSelected == isSelected)
            Container(
              height: 2,
              width: 60,
              color: Colors.blue,
            ),
        ],
      ),
    );
  }
}
