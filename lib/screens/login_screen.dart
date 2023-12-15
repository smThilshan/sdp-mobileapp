import 'package:flutter/material.dart';
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
            FlutterLogo(size: 100.0),

            SizedBox(height: 60.0),

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
              icon: Icon(Icons.person),
            ),

            const SizedBox(height: 20.0),

            MyTextBoxWidget(
              text: "Password",
              controller: _password,
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
                'Login',
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
              child: Text('Don\'t have an account? Register here'),
            ),
          ],
        ),
      ),
    );
  }
}
