import 'package:flutter/material.dart';
import 'package:sdp_mobileapp/screens/add_complaint_screen.dart';
import 'package:sdp_mobileapp/screens/complaint_screen.dart';
import 'package:sdp_mobileapp/screens/profile_screen.dart';
import 'package:sdp_mobileapp/widgets/big_btn_widget.dart';
import 'package:sdp_mobileapp/widgets/drawer_widget.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = 'home_screen';

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "SDP Comlpaints",
          style: TextStyle(
            fontFamily: 'OpenSans',
            color: Colors.white,
            fontWeight: FontWeight.w500,
          ),
        ),
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(
                Icons.menu,
                // color: Colors.white, // Set the color to white
              ),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          },
        ),
        backgroundColor: Colors.lightBlue,
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: Column(
        children: [
          // Top Banner for Image
          const SizedBox(
            height: 40.0,
          ),
          Container(
            height: 150.0,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/banner_photo.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Bottom Row with Two Columns
          const SizedBox(
            height: 80,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              // First Row
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // Box 1
                  BigBtnWidget(
                    btnText: "Add Complaint",
                    onPressed: () {
                      Navigator.pushNamed(
                          context, AddComplaintScreen.routeName);
                    },
                  ),
                  BigBtnWidget(
                    btnText: "My Complaint",
                    onPressed: () {
                      Navigator.pushNamed(context, ComplaintScreen.routeName);
                    },
                  ),

                  // Box 2
                ],
              ),
              SizedBox(
                height: 30.0,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  BigBtnWidget(
                      btnText: "Accepted Complaints", onPressed: () {}),
                  BigBtnWidget(
                    btnText: "My Profile",
                    onPressed: () {
                      Navigator.pushNamed(context, ProfileScreen.routeName);
                    },
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
      drawer: const DrawerWidget(),
    );
  }
}
