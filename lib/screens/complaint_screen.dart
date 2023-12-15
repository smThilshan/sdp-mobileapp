import 'package:flutter/material.dart';
import 'package:sdp_mobileapp/widgets/my_card_widget.dart';

class ComplaintScreen extends StatelessWidget {
  static const routeName = 'complaint_screen';

  const ComplaintScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "My Complaints",
          style: TextStyle(
            fontFamily: 'OpenSans',
            color: Colors.white,
            fontWeight: FontWeight.w500,
          ),
        ),
        backgroundColor: Colors.lightBlue,
        centerTitle: true,
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 30,
          ),
          MyCardWidget(
              Btext: "Complaint regarding forest",
              Stext: "pending",
              color: Colors.orange),
          MyCardWidget(
              Btext: "Complaint regarding wildlife",
              Stext: "pending",
              color: Colors.orange),
          MyCardWidget(
              Btext: "Complaint regarding SDP",
              Stext: "approved",
              color: Colors.green),
          MyCardWidget(
              Btext: "Complaint 0023", Stext: "approved", color: Colors.green),
          MyCardWidget(
              Btext: "Complaint wildlife",
              Stext: "approved",
              color: Colors.green),
        ],
      ),
    );
  }
}
