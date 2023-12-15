import 'package:flutter/material.dart';
import 'package:sdp_mobileapp/models/complaint_model.dart';
import 'package:sdp_mobileapp/widgets/big_textbox_widget.dart';
import 'package:sdp_mobileapp/widgets/my_date_picker_widget.dart';
import 'package:sdp_mobileapp/widgets/my_dropdown_widget.dart';
import 'package:sdp_mobileapp/widgets/my_photo_input_widget.dart';
import 'package:sdp_mobileapp/widgets/my_textbox_widget.dart';
import 'package:image_picker/image_picker.dart';

class AddComplaintScreen extends StatefulWidget {
  static const routeName = 'add_complaint_screen';

  const AddComplaintScreen({super.key});

  @override
  State<AddComplaintScreen> createState() => _AddComplaintScreenState();
}

class _AddComplaintScreenState extends State<AddComplaintScreen> {
  TextEditingController _location = TextEditingController();
  TextEditingController _description = TextEditingController();
  // TextEditingController _locationController = TextEditingController();

  List<XFile>? selectedPhotos;

  void handlePhotosSelected(List<XFile>? photos) {
    setState(() {
      selectedPhotos = photos;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Add Compalaints",
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
              MyDropDownWidget(),
              MyDatePicker(),

              // MyTextBoxWidget(
              //   text: "Username",
              //   // controller: _username,
              //   icon: Icon(Icons.person),
              // ),

              // const SizedBox(height: 10.0),

              // MyTextBoxWidget(
              //   text: "NIC",
              //   // controller: _nic,
              //   icon: Icon(Icons.numbers),
              // ),
              // const SizedBox(height: 10.0),

              MyTextBoxWidget(
                text: "Location",
                controller: _location,
                icon: Icon(Icons.map),
              ),
              const SizedBox(height: 10.0),

              BigTextBoxWidget(
                text: "Description",
                controller: _description,
              ),
              const SizedBox(height: 10.0),

              MyPhotoInputButton(onPhotosSelected: handlePhotosSelected),

              SizedBox(height: 50.0),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    // Complaint complaint = Complaint(
                    //   username: "John Doe",
                    //   description: "This is a sample complaint.",
                    // );
                    // complaintProvider.addComplaint(complaint);

                    // Navigator.pop(context); // Go back to the previous screen
                  },
                  child: Text("Add Complaint"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
