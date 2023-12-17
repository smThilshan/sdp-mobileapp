import 'package:flutter/material.dart';
import 'package:sdp_mobileapp/screens/login_screen.dart';
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
              const SizedBox(height: 50.0),
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
                icon: const Icon(Icons.person),
              ),

              const SizedBox(height: 10.0),

              MyTextBoxWidget(
                text: "NIC",
                controller: _nic,
                icon: const Icon(Icons.numbers),
              ),
              const SizedBox(height: 10.0),

              MyTextBoxWidget(
                text: "Mobile No",
                controller: _nic,
                icon: const Icon(Icons.phone),
              ),
              const SizedBox(height: 10.0),

              MyTextBoxWidget(
                text: "Password",
                controller: _nic,
                icon: const Icon(Icons.password_outlined),
              ),
              const SizedBox(height: 10.0),

              MyTextBoxWidget(
                text: "Confirm Password",
                controller: _nic,
                icon: const Icon(Icons.password_outlined),
              ),

              const SizedBox(height: 25.0),

              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, LoginScreen.routeName);
                },
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.blue,
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  minimumSize: const Size(double.infinity, 50.0),
                ),
                child: const Text(
                  'Sign Up',
                  style: TextStyle(
                    fontSize: 15.0,
                  ),
                ),
              ),

              const SizedBox(height: 10.0),

              // Register Link
              TextButton(
                onPressed: () {
                  // print('Register button pressed');
                  Navigator.pushNamed(context, LoginScreen.routeName);
                },
                child: const Text('Already I hava an account'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
