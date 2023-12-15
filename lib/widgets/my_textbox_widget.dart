import 'package:flutter/material.dart';

class MyTextBoxWidget extends StatelessWidget {
  final TextEditingController? controller;
  final String text;
  final Icon? icon;

  const MyTextBoxWidget({
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
        onTap: () {},
        controller: controller,
        decoration: InputDecoration(
          prefixIcon: icon,
          labelStyle: const TextStyle(color: Colors.black),
          fillColor: Colors.white,
          labelText: text,
          contentPadding: const EdgeInsets.symmetric(
              vertical: 14.0, horizontal: 12.0), // Adjust the padding as needed
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
