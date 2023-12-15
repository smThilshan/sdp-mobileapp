import 'package:flutter/material.dart';

import '../models/complaint_model.dart';

class ComplaintProvider extends ChangeNotifier {
  List<Complaint> _complaints = [];

  List<Complaint> get complaints => _complaints;

  void addComplaint(Complaint complaint) {
    _complaints.add(complaint);
    notifyListeners();
  }
}
