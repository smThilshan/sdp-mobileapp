import 'package:flutter/material.dart';

class BigTextBoxWidget extends StatelessWidget {
  final TextEditingController? controller;
  final String text;
  final Icon? icon;

  const BigTextBoxWidget({
    this.controller,
    required this.text,
    this.icon,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      child: TextField(
        maxLines: null, // Set maxLines to null to allow unlimited lines
        onTap: () {},
        controller: controller,
        decoration: InputDecoration(
          prefixIcon: icon,
          labelStyle: const TextStyle(color: Colors.black),
          fillColor: Colors.white,
          labelText: text,
          contentPadding: const EdgeInsets.symmetric(
            vertical: 14.0,
            horizontal: 12.0,
          ), // Adjust horizontal padding as needed
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(color: Colors.blue.shade400),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(color: Colors.blue.shade400),
          ),
        ),
      ),
    );
  }
}
