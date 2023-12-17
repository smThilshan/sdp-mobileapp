import 'package:flutter/material.dart';
import 'package:sdp_mobileapp/screens/home_screen.dart';
import 'package:sdp_mobileapp/screens/register_screen.dart';
import 'package:sdp_mobileapp/widgets/my_textbox_widget.dart';

class LoginScreen extends StatelessWidget {
  static const routeName = 'login_screen';

  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController _username = TextEditingController();
    final TextEditingController _password = TextEditingController();

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Logo or Image
            const FlutterLogo(size: 100.0),

            const SizedBox(height: 60.0),

            const Text(
              'Login here!', // Decorative text
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

            const SizedBox(height: 20.0),

            MyTextBoxWidget(
              text: "Password",
              controller: _password,
              icon: const Icon(Icons.password_outlined),
            ),

            const SizedBox(height: 25.0),

            // Login Button
            ElevatedButton(
              onPressed: () {
                // print('Login button pressed');
                Navigator.pushNamed(context, HomeScreen.routeName);
              },
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Colors.blue, // Set the text color to white
                padding: const EdgeInsets.symmetric(
                    vertical: 16.0), // Adjust the vertical padding as needed
                minimumSize: const Size(double.infinity,
                    50.0), // Make the button stretch across the width
              ),
              child: const Text(
                'Login',
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
                Navigator.pushNamed(context, RegisterScreen.routeName);
              },
              child: const Text('Don\'t have an account? Register here'),
            ),
          ],
        ),
      ),
    );
  }
}
