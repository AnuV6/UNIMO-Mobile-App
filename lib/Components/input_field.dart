import 'package:flutter/material.dart';

class UsernameInputField extends StatelessWidget {
  final TextEditingController? controller;
  final String? errorText;
  final ValueChanged<String>? onChanged;
  final String label;

  const UsernameInputField({
    Key? key,
    this.controller,
    this.errorText,
    this.onChanged,
    this.label = 'Username', // Default label text
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      onChanged: onChanged,
      decoration: InputDecoration(
        labelText: label,
        labelStyle: TextStyle(
          color: Colors.grey[700],
          fontSize: 14,
        ),
        hintText: 'User name',
        hintStyle: TextStyle(
          color: Colors.grey[400],
          fontSize: 16,
        ),
        contentPadding: const EdgeInsets.symmetric(
          vertical: 16,
          horizontal: 16,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(
            color: Color.fromARGB(255, 73, 73, 73),
            width: 1,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(
            color: Color.fromARGB(255, 43, 42, 42),
            width: 1,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(
            color: Color.fromARGB(255, 43, 42, 42),
            width: 2,
          ),
        ),
        errorText: errorText,
        filled: true,
        fillColor: Colors.white,
        floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
    );
  }
}

// Usage example:
// UsernameInputField(
//   controller: _usernameController,
//   label: 'Label',
//   onChanged: (value) {
//     // Handle text changes
//   },
//   errorText: 'Error message here', // Optional error message
// )