import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class MyDatePicker extends StatefulWidget {
  const MyDatePicker({Key? key}) : super(key: key);

  @override
  State<MyDatePicker> createState() => _MyDatePickerState();
}

class _MyDatePickerState extends State<MyDatePicker> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  DateTime? selectedDate;
  TimeOfDay? selectedTime;

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate ?? DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );

    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

  Future<void> _selectTime(BuildContext context) async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: selectedTime ?? TimeOfDay.now(),
    );

    if (picked != null && picked != selectedTime) {
      setState(() {
        selectedTime = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              readOnly: true,
              onTap: () async {
                await _selectDate(context);
                await _selectTime(context);
              },
              controller: TextEditingController(
                text: (selectedDate != null && selectedTime != null)
                    ? 'Date: ${DateFormat('yyyy-MM-dd').format(selectedDate!)} - Time: ${selectedTime!.format(context)}'
                    : '',
              ),
              decoration: InputDecoration(
                labelText: "Date & Time",
                hintText: (selectedDate == null || selectedTime == null)
                    ? 'Select Date and Time'
                    : '',
                suffixIcon: IconButton(
                  icon: Icon(Icons.calendar_today),
                  onPressed: () async {
                    await _selectDate(context);
                    await _selectTime(context);
                  },
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(color: Colors.blue.shade400),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(color: Colors.blue.shade400),
                ),
                contentPadding: const EdgeInsets.symmetric(
                  vertical: 16.0,
                  horizontal: 12.0,
                ),
              ),
            ),
            SizedBox(height: 10.0),
          ],
        ),
      ),
    );
  }
}
