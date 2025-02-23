import 'package:flutter/material.dart';
import 'package:unimo_mobile_app/Components/get_start_button.dart';
import 'package:unimo_mobile_app/Screens/login_screen.dart'; // Import LoginScreen

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const SizedBox(height: 40),
                // Logo Section
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/logo.png', // Update this with the correct path to your image asset
                      height: 80,
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                // Description Section
                Text(
                  'Access real-time updates on faculty facilities from where ever you\'re at. Run by students for students.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.grey[600],
                    height: 1.5,
                  ),
                ),
                const SizedBox(height: 32),
                // Login/Sign Up Toggle Buttons
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _buildTabButton('Login', false, context),
                    const SizedBox(width: 32),
                    _buildTabButton('Sign Up', true, context),
                  ],
                ),
                const SizedBox(height: 32),
                // Form Fields
                Row(
                  children: [
                    Expanded(child: _buildTextField('First name')),
                    const SizedBox(width: 16),
                    Expanded(child: _buildTextField('Last name')),
                  ],
                ),
                const SizedBox(height: 16),
                _buildTextField('University registration number (TE218993)'),
                const SizedBox(height: 16),
                _buildTextField('Password (6 digits at least, case sensitive)',
                    isPassword: true),
                const SizedBox(height: 16),
                _buildTextField('Confirm password', isPassword: true),
                const SizedBox(height: 16),
                _buildTextField('University Email'),
                const SizedBox(height: 24),
                // Profile Picture Upload Button
                OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    side: BorderSide(color: Colors.grey[300]!),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.file_upload_outlined, color: Colors.grey[600]),
                      const SizedBox(width: 8),
                      Text('Profile picture',
                          style: TextStyle(color: Colors.grey[600])),
                    ],
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  'This image is a must due to security reasons.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey[600],
                  ),
                ),
                const SizedBox(height: 32),
                // Register Button
                GetStartedButton(
                  text: 'Register',
                  color: Colors.blue,
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Builds a tab button for switching between Login and Sign Up
  Widget _buildTabButton(String text, bool isSelected, BuildContext context) {
    return InkWell(
      onTap: () {
        if (text == 'Login') {
          // Navigate to LoginScreen when 'Login' is tapped
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => const LoginScreen()),
          );
        } else {
          // Handle 'Sign Up' behavior if needed (Stay on RegisterScreen)
        }
      },
      child: Column(
        children: [
          Text(
            text,
            style: TextStyle(
              fontSize: 18,
              color: isSelected ? Colors.blue[400] : Colors.grey[600],
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 4),
          if (isSelected)
            Container(
              height: 2,
              width: 60,
              color: Colors.blue[400],
            ),
        ],
      ),
    );
  }

  /// Builds a reusable text field with optional password hiding functionality
  Widget _buildTextField(String placeholder, {bool isPassword = false}) {
    return TextField(
      obscureText: isPassword,
      decoration: InputDecoration(
        hintText: placeholder,
        hintStyle: TextStyle(
          color: Colors.grey[400],
          fontSize: 16,
        ),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 16,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(
            color: Colors.grey[300]!,
            width: 1,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(
            color: Colors.grey[300]!,
            width: 1,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(
            color: Colors.blue[400]!,
            width: 1,
          ),
        ),
        filled: true,
        fillColor: Colors.white,
      ),
    );
  }
}
