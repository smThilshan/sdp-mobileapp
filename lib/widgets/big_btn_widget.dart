import 'package:flutter/material.dart';

class BigBtnWidget extends StatelessWidget {
  final String btnText;
  final VoidCallback onPressed;

  const BigBtnWidget({required this.btnText, required this.onPressed, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160.0,
      height: 160.0,
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          padding: const EdgeInsets.all(16.0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          backgroundColor: Colors.blue.shade500,
        ),
        child: Text(
          btnText,
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: Colors.white, // Set text color to white
            fontSize: 18.0, // Set font size
            fontWeight: FontWeight.bold, // Set font weight to bold
          ),
        ),
      ),
    );
  }
}
