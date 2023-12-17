import 'package:flutter/material.dart';
import 'package:sdp_mobileapp/models/complaint_model.dart';
import 'package:sdp_mobileapp/widgets/big_textbox_widget.dart';
import 'package:sdp_mobileapp/widgets/my_dropdown_widget.dart';
import 'package:sdp_mobileapp/widgets/my_textbox_widget.dart';

import '../widgets/my_date_picker_widget.dart';

class ComplaintDetailsScreen extends StatelessWidget {
  static const routeName = 'complaint_details_screen';

  final Complaint? complaint;

  const ComplaintDetailsScreen({Key? key, this.complaint}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Check if complaint is null, handle accordingly
    if (complaint == null) {
      // Handle the case where there is no complaint.
      return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Complaint Details",
            style: TextStyle(
              fontFamily: 'OpenSans',
              color: Colors.white,
              fontWeight: FontWeight.w500,
            ),
          ),
          backgroundColor: Colors.lightBlue,
          centerTitle: true,
          iconTheme: const IconThemeData(color: Colors.white),
        ),
        body: const Center(
          child: Text("No complaint details available."),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Complaint Details",
          style: TextStyle(
            fontFamily: 'OpenSans',
            color: Colors.white,
            fontWeight: FontWeight.w500,
          ),
        ),
        backgroundColor: Colors.lightBlue,
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 30.0),
              // Username Input
              MyDropDownWidget(
                onValueChanged: (String? value) {},
              ),
              MyDatePicker(
                onDateTimeSelected: (DateTime? dateTime) {},
              ),
              MyTextBoxWidget(
                text: "Location",
                controller: TextEditingController(text: complaint?.location),
                icon: const Icon(Icons.map),
              ),
              const SizedBox(height: 10.0),
              BigTextBoxWidget(
                text: "Description",
                controller: TextEditingController(text: complaint?.description),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
