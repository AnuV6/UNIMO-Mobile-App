import 'package:flutter/material.dart';

class UsernameInputField extends StatelessWidget {
  final TextEditingController? controller;
  final String? errorText;
  final ValueChanged<String>? onChanged;

  const UsernameInputField({
    Key? key,
    this.controller,
    this.errorText,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Username',
          style: TextStyle(
            fontSize: 14,
            color: Colors.grey[700],
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(height: 8), // Space between label and input
        TextFormField(
          controller: controller,
          onChanged: onChanged,
          decoration: InputDecoration(
            hintText: 'Input',
            hintStyle: TextStyle(
              color: Colors.grey[400],
            ),
            prefixIcon: Icon(
              Icons.person_outline,
              color: Colors.grey[600],
              size: 20,
            ),
            contentPadding: const EdgeInsets.symmetric(
              vertical: 16,
              horizontal: 16,
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
              borderSide: const BorderSide(
                color: Colors.blue,
                width: 1,
              ),
            ),
            errorText: errorText,
            filled: true,
            fillColor: Colors.white,
          ),
        ),
      ],
    );
  }
}

// Usage example:
// UsernameInputField(
//   controller: _usernameController,
//   onChanged: (value) {
//     // Handle text changes
//   },
//   errorText: 'Error message here', // Optional error message
// )