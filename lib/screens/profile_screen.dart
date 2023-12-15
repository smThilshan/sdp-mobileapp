import 'package:flutter/material.dart';
import 'package:sdp_mobileapp/widgets/my_textbox_widget.dart';

class ProfileScreen extends StatelessWidget {
  static const routeName = 'profile_screen';
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "My Profile",
          style: TextStyle(
            fontFamily: 'OpenSans',
            color: Colors.white,
            fontWeight: FontWeight.w500,
          ),
        ),
        backgroundColor: Colors.lightBlue,
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 30.0),
              // Username Input
              MyTextBoxWidget(
                text: "Username",
                // controller: _username,
                icon: Icon(Icons.person),
              ),

              const SizedBox(height: 10.0),

              MyTextBoxWidget(
                text: "NIC",
                // controller: _nic,
                icon: Icon(Icons.numbers),
              ),
              const SizedBox(height: 10.0),

              MyTextBoxWidget(
                text: "Mobile No",
                // controller: _nic,
                icon: Icon(Icons.phone),
              ),
              const SizedBox(height: 10.0),

              MyTextBoxWidget(
                text: "Password",
                // controller: _nic,
                icon: Icon(Icons.password_outlined),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
