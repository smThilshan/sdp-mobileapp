class Complaint {
  final String description;
  final String incidentType;
  final DateTime dateTime;
  final String location;
  final String? status;

  Complaint(
      {required this.description,
      required this.incidentType,
      required this.dateTime,
      required this.location,
      this.status});
}
