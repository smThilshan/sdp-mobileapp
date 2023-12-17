import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sdp_mobileapp/providers/complaint_provider.dart';
import 'package:sdp_mobileapp/widgets/my_card_widget.dart';

class AcceptedComplaintScreen extends StatelessWidget {
  static const routeName = 'accepted_complaint_screen';

  const AcceptedComplaintScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Accepted Complaints",
          style: TextStyle(
            fontFamily: 'OpenSans',
            color: Colors.white,
            fontWeight: FontWeight.w500,
          ),
        ),
        backgroundColor: Colors.lightBlue,
        centerTitle: true,
      ),
      body: Consumer<ComplaintProvider>(
        builder: (context, complaintProvider, child) {
          final complaints = complaintProvider.complaints;

          return ListView.builder(
            itemCount: complaints.length,
            itemBuilder: (context, index) {
              final complaint = complaints[index];
              return GestureDetector(
                onTap: () {
                  // Navigate to ComplaintDetailsScreen when tapping a complaint
                  // Navigator.pushNamed(
                  //   context,
                  //   ComplaintDetailsScreen.routeName,
                  //   arguments: ComplaintDetailsArguments(complaint: complaint),
                  // );
                },
                child: MyCardWidget(
                  Btext: complaint.description,
                  Stext:
                      "accepted", // Assuming status is always pending for simplicity
                  color: getStatusColor("accepted"),
                ),
              );
            },
          );
        },
      ),
    );
  }

  Color getStatusColor(String status) {
    switch (status.toLowerCase()) {
      case 'pending':
        return Colors.orange;
      case 'accepted':
        return Colors.green;
      default:
        return Colors.grey;
    }
  }
}
