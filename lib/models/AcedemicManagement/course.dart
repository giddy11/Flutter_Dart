import 'package:dart_application_1/models/AcedemicManagement/instructor.dart';

class Course {
  static int _idCounter = 0;

  Course() {
    courseId = ++_idCounter;
  }

  late final int courseId;
  String name = "";
  String code = "";
  int credit = 0;
  String description = "";
  late Instructor instructorId;
  // DateTime? scheduledTime;

  DateTime dateCreated = DateTime.now();
  DateTime dateUpdated = DateTime.now();
}