import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sdp_mobileapp/providers/complaint_provider.dart';
import 'package:sdp_mobileapp/screens/add_complaint_screen.dart';
import 'package:sdp_mobileapp/screens/complaint_details_screen.dart';
import 'package:sdp_mobileapp/screens/complaint_screen.dart';
import 'package:sdp_mobileapp/screens/forgot_password_screen.dart';
import 'package:sdp_mobileapp/screens/home_screen.dart';
import 'package:sdp_mobileapp/screens/login_screen.dart';
import 'package:sdp_mobileapp/screens/profile_screen.dart';
import 'package:sdp_mobileapp/screens/register_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ComplaintProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: const HomeScreen(),
        routes: {
          HomeScreen.routeName: (context) => const HomeScreen(),
          LoginScreen.routeName: (context) => const LoginScreen(),
          RegisterScreen.routeName: (context) => const RegisterScreen(),
          ProfileScreen.routeName: (context) => const ProfileScreen(),
          ForgotPasswordScreen.routeName: (context) =>
              const ForgotPasswordScreen(),
          ComplaintScreen.routeName: (context) => const ComplaintScreen(),
          ComplaintDetailsScreen.routeName: (context) =>
              const ComplaintDetailsScreen(),
          AddComplaintScreen.routeName: (context) => const AddComplaintScreen()
        },
      ),
    );
  }
}
