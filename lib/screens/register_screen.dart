import 'package:flutter/material.dart';
import 'package:sdp_mobileapp/widgets/my_textbox_widget.dart';

class RegisterScreen extends StatelessWidget {
  static const routeName = 'register_screen';
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController _username = TextEditingController();
    final TextEditingController _nic = TextEditingController();

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 50.0),
              const Text(
                'Register here!', // Decorative text
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 22.0, // Set the font size to your desired value
                  fontWeight: FontWeight.bold, // Set font weight to bold
                ),
              ),

              const SizedBox(height: 30.0),
              // Username Input
              MyTextBoxWidget(
                text: "Username",
                controller: _username,
                icon: Icon(Icons.person),
              ),

              const SizedBox(height: 10.0),

              MyTextBoxWidget(
                text: "NIC",
                controller: _nic,
                icon: Icon(Icons.numbers),
              ),
              const SizedBox(height: 10.0),

              MyTextBoxWidget(
                text: "Mobile No",
                controller: _nic,
                icon: Icon(Icons.phone),
              ),
              const SizedBox(height: 10.0),

              MyTextBoxWidget(
                text: "Password",
                controller: _nic,
                icon: Icon(Icons.password_outlined),
              ),
              const SizedBox(height: 10.0),

              MyTextBoxWidget(
                text: "Confirm Password",
                controller: _nic,
                icon: Icon(Icons.password_outlined),
              ),

              SizedBox(height: 25.0),

              // Login Button
              ElevatedButton(
                onPressed: () {
                  // Add your login logic here
                  print('Login button pressed');
                },
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.blue, // Set the text color to white
                  padding: EdgeInsets.symmetric(
                      vertical: 16.0), // Adjust the vertical padding as needed
                  minimumSize: Size(double.infinity,
                      50.0), // Make the button stretch across the width
                ),
                child: Text(
                  'Sign Up',
                  style: TextStyle(
                    fontSize: 15.0,
                  ),
                ),
              ),

              SizedBox(height: 10.0),

              // Register Link
              TextButton(
                onPressed: () {
                  // Add your register logic here
                  print('Register button pressed');
                },
                child: Text('Already I hava an account'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
